# Presentation

## What is the application about?

- Inspired by my experiences at racket sport club nights - Currently experience this at my pickleball club nights and have previously experienced it at squash clubs
  <br>
  <br> - The factors: - Limited courts - Different number of players each week - Varying levels of ability - Varying levels of fitness
  <br>
  <br> - Leads to: - Stressful evening for the organiser as they have to orchestrate who plays on which court, balancing all the factors above - Players can end up having mis-balanced matches - Often courts are empty while it is decided who plays next eating into valuable playing time
  <br>
  <br>
- 'Club Night' is an app designed to make club nights for sport clubs really simple for organisers and good fun for all club members.

### How it works:

- Someone in the club will sign-up to the app and pay a small fee to create the club
  - The first club member will by default be an <strong>admin</strong> for the club
- All other members of the club will sign up to the app and join the club for free
- Club admins will have the ability to <strong>start a session</strong>
- When a session is started, club members can be toggled as present
- The app will be used throughout the course of a club night to then generate matches

# Demo

# User Stories

(AAU = As a user. AAA = As an admin.)

### MVP

- AAU I want to be able to create an account so that I can join my sports clubs
- AAU I want to be able to login and out so that my account is protected
- AAU I want to be able to add basic information about myself so that other club members can see a bit about me
- AAU I want to be able to give myself a player rating (e.g. beginner) so that my club can generate me suitable matches
- AAU I want to be able to see who else is in my sports club so that I can find my club mates
- AAA I want to be able to toggle who is present at a club night and who isn’t so that only present players are put into matches
- AAA I want present players to be in 1 of 3 states, ‘playing’, ‘waiting to play’ or ‘resting’ so that the app can generate matches with available and willing players
- AAA I want to be able to create a match on the app so that players can play against each other
- AAA I want to be able to create different types of matches so that club members can have varied match types
  - AAA I want to be able to create a random match where 4 players are picked at random from the ‘waiting to play’ pool
  - AAA I want to be able to create a ‘fixed ability’ match where I can select an ability and 4 players are randomly selected of that ability (eg a beginners only match)
  - AAA I want to be able to manually pick players for a match so that I have complete flexibility to create match pairings for club night
- AAA I want to be able to delete players from the club so that if a player no longer attends they aren’t listed as a member
- AAA I want to be able to delete my club so that if the club no longer exists people know

### Additional

- AAU I want to be able to request to join my club so that my club admins can add me
- AAU I want to be able to join multiple sports clubs as I might be part of more than one sports club in reality
- AAU I want to be able to create a sports club so that my members can join it
- AAA for a club, I want to be able to accept/decline join request so that not just anyone can join the club
- AAU I want to be the only admin initially when I create a new sports club so that I can control who joins the club
- AAA I want to be able to make other club members admins so that admin responsibilities are spread between club members
- AAA I want to have more flexibility for generating matches so that the players get more varied matches
  - AAA I want to be able to create a ‘balanced mixed ability’ match where I can select multiple ratings and the teams will still be balanced (eg I have a 2v2 pickleball match and I want to make it a beginners and
    intermediates match then the app would pick 2 pairs of 1 beginner player and 1 intermediate player) so that we can mix the abilities for club night
  - AAA I want to be able to select some players and generate the rest so that if I know I want one player to play I can ensure they get the next match without having to generate all the players (eg if 1 player has been
    waiting for a while I can ensure that they are part of the next match generation)
- AAA I want to be able to create a new club night session so that all match making history is wiped clean so that the match generation is fresh for a new club night
- AAA I want to be able to prioritise match pairings between people who haven’t played against each other that session so that players don’t get trapped playing with the same pairings all night
- AAA I want to be able to incorporate a payment system for my app, both a PAYG and an active membership system so that I can keep track of who has and hasn’t paid
- AAA I want to be able to see a layout of the course at my club and for players to be populated onto the court that they are meant to be playing on so that it is really easy to see who is playing
  and on which court they’re meant to be playing on
- AAA I want to be able to toggle a timer on for matches (eg all matches last a max of 10 mins) so that all players come off at the same time and there is a richer pool of players to generate matches from
- AAA I want to be able to select how many courts I have available as this will change week to week, club to club
- AAA I want to be able to set the number of players per court so that I can create club nights for all kinds of sports (eg squash = 2. 5-a-side = 5)

# Walk through a piece of code

- Going to show how the 'fixed ability' game is generated
- Want to demonstrate how simple the logic is once I set up my model correctly

This is in the view file

```ruby
<%= form_tag(
        { controller: "session", action: "fixed_ability", club_id: params[:club_id], court: params[:court], level: "Beginner" },
         method: :post) do %>
        <%= submit_tag "Beginner (#{Membership.where(waiting_to_play: true, club_id: params[:club_id], present: true, level: "Beginner").count} available)", class: "btn btn-primary" %>
      <% end %>
```

This is in the 'Session' Controller

```ruby
def fixed_ability
    @random_players = Membership.where(waiting_to_play: true, club_id: params[:club_id], present: true, level: params[:level]).order(Arel.sql('RANDOM()')).limit(4)
    @random_players.each do |player|
      player.waiting_to_play = false
      player.court = params[:court]
      player.save
    end
    redirect_to session_show_path(club: params[:club_id])
  end
```

- Have more match generation options I wanted to implement and although it is the most important part of the app it is also relatively straightforward!

# Biggest Challenges

1. Trying to follow the MVC design pattern
   - Sometimes did well
   - Sometimes didn't do so well (see above)
2. Page refreshes, not having a react state, using javascript.
   - Definitely possible to fix (I think using javascript, using event listeners etc.)
   - Shied away from it because I managed to get through with just updating the backed every time - which is definitely far from ideal both from a cost perspective and a UX perspective

# Favorite Bits

- Deploying to Heroku was the biggest high
- Enjoyed getting to grips with rails and learning how easy some parts are
  - Didn't feel so binary (backend + frontend), it felt more integrated
    <br>
    <br>
- Very much liked how easy it was to get data 'through' other tables

  - Recall issue trying to get user names when all I had was a membership id
    <br>
    <br>

- Enjoyed having a bit more time for the project
  - Gave time to add some cooler features
  - Didn't feel like such a rush at the beginning to gun for MVP - could add non-MVP bits along the way where it made sense

# Next Features

1.  Want to turn my attention to the versatility feature in particular:

    ```
     AAA I want to be able to set the number of players per court so that I can create club nights for all kinds of sports (eg squash = 2. 5-a-side = 5)
    ```

- Given the apps intentions I think this would hugely increase the target audience. At the moment it's bespoke to a club with 4 courts with 4 players on each which is very limiting.

2. Second focus would be to increase the sophistication of the match generation

```md
- AAA I want to be able to create a ‘balanced mixed ability’ match where I can select multiple ratings and the teams will still be balanced

(eg I have a 2v2 pickleball match and I want to make it a beginners and intermediates match then the app would pick 2 pairs of 1 beginner player and 1 intermediate player)

so that we can mix the abilities for club night

- AAA I want to be able to select some players and generate the rest so that if I know I want one player to play I can ensure they get the next match without having to generate all the players (eg if 1 player has been waiting for a while I can ensure that they are part of the next match generation)
```
