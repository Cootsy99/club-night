class SessionController < ApplicationController
  def show
    @club = Club.find(params[:club])
    @members = params[:members]
    if params[:random_players].present?
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

  def random1
    @random_players = Membership.where(waiting_to_play: true, club_id: params[:club_id], present: true).order(Arel.sql('RANDOM()')).limit(4)
    @players_arr = [] 
    @random_players.each do |player| 
      player.waiting_to_play = false
      player.save
      @players_arr << player.id
    end
    redirect_to session_show_path(club: params[:club_id], random_players: @players_arr)
  end

  def end_game_1
    @players = Membership.where(id: params[:players])
    @players.each do |player|
      player.waiting_to_play = true
      player.save
    end
    redirect_to session_show_path(club: params[:club_id])
  end


end
