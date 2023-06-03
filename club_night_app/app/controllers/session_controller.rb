class SessionController < ApplicationController
  def show
    @club = Club.find(params[:club])
    @members = params[:members]
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
    @existing_players = Membership.where(club_id: params[:club_id], present: true, court: params[:court])
    @existing_players.each do |player| 
      player.waiting_to_play = true
      player.court = 0
      player.save
    end
    @random_players = Membership.where(waiting_to_play: true, club_id: params[:club_id], present: true).order(Arel.sql('RANDOM()')).limit(4) 
    @random_players.each do |player| 
      player.waiting_to_play = false
      player.court = params[:court]
      player.save
    end
    redirect_to session_show_path(club: params[:club_id])
  end

  def end_game
    @players = Membership.where(club_id: params[:club_id], present: true, court: params[:court])
    @players.each do |player|
      player.waiting_to_play = true
      player.court = 0
      player.save
    end
    redirect_to session_show_path(club: params[:club_id])
  end

  def need_rest
    @membership = Membership.find(params[:membership])
    @membership.resting = true
    @membership.waiting_to_play = false
    @membership.save
    redirect_to session_show_path(club: params[:club_id])
  end

  def end_rest
    @membership = Membership.find(params[:membership])
    @membership.resting = false
    @membership.waiting_to_play = true
    @membership.save
    redirect_to session_show_path(club: params[:club_id])
  end

end
