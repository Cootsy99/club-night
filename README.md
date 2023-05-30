# Club Night

## Overview

'Club Night' is an app designed to make running a sports club night for organisers really simple and make the session really good fun for all club members.

The idea is that club chairpeople will pay a small fee to subscribe to the application and they will create their club and become the default admin. Members
of the club can then join the site fore free, create an account and then join their sports clubs. In the most basic form of the app, it will only support a pickleball
club that has 4 courts and plays doubles but the ambition of the application is to increase the flexibility on that.

All members will also be 'pro subscribers' by default in the basic form of the app.
Clubs will be able to toggle people as present for a club night and will use the app throughout the session to generate matches. The match generation will
be simple in the basic form of the app with ambitions to increase the functionality.

This idea has been inspired by personal experiences where organising consistently good quality club night matches is challenging.

## Requirements

- Build a full stack web application. Must be your own work.
- Select a Project Idea of your own.
- Have at least 2 models (more if it makes sense)
- Auth is a requirement
- Have full CRUD on at least one of your models
- Be able to Add/Delete on any remaining models
- Have high quality code:
- Follow accepted naming conventions
- Consistent indentation
- Well-structured and readable code
- Semantic naming of variables, functions, CSS classes, etc.
- Short and clear functions that do one thing
- Efficient code - if you have your MVP, refactor
- DRY (Don't Repeat Yourself) code
- Use one of these technology stacks. You may choose which tech stack.
- Full-Stack Rails App
- Rails API with React Front-End
- Express API with React Front-End
- Be deployed on Heroku or similar platform
- Craft a README.md file that explains your app.

### Stretch Goals

- Use a 3rd party API
- Mobile Responsive
- High quality, professional design
- Redux
- Automated Tests Using Jest / RSpec or MiniTest for Rails

## User Stories

(AAU = As a user. AAA = As an admin. AAPS = As a pro subscriber)

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
- AAPS I want to be able to create a sports club so that my members can join it
- AAA for a club, I want to be able to accept/decline join request so that not just anyone can join the club
- AAPS I want to be the only admin initially when I create a new sports club so that I can control who joins the club
- AAA I want to be able to make other club members and admins that Amin responsibilities are spread between club members
- AAA I want to have more flexibility for generating matches so that the players get more varied matches
  - AAA I want to be able to create a ‘balanced mixed ability’ match where I can select multiple ratings and the teams will still be balanced (eg I have a 2v2 pickleball match and I want to make it a beginners and
    intermediates match then the app would pick 2 pairs of 1 beginner player and 1 intermediate player) so that we can mix the abilities for club night
  - AAA I want to be able to select some players and generate the rest so that if I know I want one player to play I can ensure they get the next match without having to generate all the players (eg if 1 player has been
    waiting for a while I can ensure that they are part of the next match generation)
- AAA I want to be able to create a new club night session so that all match making history is wiped clean so that the match generation is fresh for a new club night
- AAA I want to be able to prioritise match pairings between people who haven’t played against each other that session so that players don’t get trapped playing with the same pairings all night
- AAPS I want to be able to incorporate a payment system into the app, both a PAYG and a active membership system so that I can keep track of who has and hasn’t paid
- AAA I want to be able to see a layout of the course at my club and for players to be populated onto the court that they are meant to be playing on so that it is really easy to see who is playing
  and on which court they’re meant to be playing on
- AAA I want to be able to toggle a timer on for matches (eg all matches last a max of 10 mins) so that all players come off at the same time and there is a richer pool of players to generate matches from

## ERD

<image src="/Users/jackcoots/sei/projects/club-night/Pictures/ERD.png" alt="Entity Relationship Diagram"></image>

## Wireframes

These wireframes are high level and indicative of the general user journey. The final design will likely be slightly different.

<image src="/Users/jackcoots/sei/projects/club-night/Pictures/Wireframes1.png" alt="Wireframes Picture 1"></image>

<image src="/Users/jackcoots/sei/projects/club-night/Pictures/Wireframes2.png" alt="Wireframes Picture 2"></image>
