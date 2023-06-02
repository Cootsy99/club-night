class SessionController < ApplicationController
  def show
    @club = Club.find(params[:club])
    @members = params[:members]
    if params[:random_players].present?
      puts "hebvhjeqbwfhbeqhwbfcwhjeqbrvhjqbwe"
      @random_players = params[:random_players]
    end
  end

  def available_members
    @club = Club.find(params[:club])
  end

  def update_attendance
    @membership = Membership.find(params[:membership])
    @membership.present = params[:present] || false
    puts @membership.present
    @membership.save
  end

  def random
    @random_players = Membership.where(waiting_to_play: true, club_id: params[:club_id], present: true).order(Arel.sql('RANDOM()')).limit(4)
    @players_arr = [] 
    @random_players.each do |player| 
      @players_arr << player.user.name
    end
    puts "WORKINGGGGGGGGGGGGGGGGGGGGG"
    puts @random_players
    puts @players_arr
    #   #   puts player.user.name 
    # @random_players.each do |player| 
    #   puts player.user.name 
    # end
    redirect_to session_show_path(club: params[:club_id], random_players: @players_arr)
  end


end
