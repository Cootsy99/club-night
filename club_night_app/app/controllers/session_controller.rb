class SessionController < ApplicationController
  def show
    @club = Club.find(params[:club])
    @members = params[:members]
    # if params[:current_players].present?
    #   puts "Current players is being defined correctly #########################"
    #   @current_players = params[:current_players]
    # else
    #   @current_players = [[],[],[],[]]
    # end
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

  def random_1
    @random_players_1 = Membership.where(waiting_to_play: true, club_id: params[:club_id], present: true).order(Arel.sql('RANDOM()')).limit(4) 
    @random_players_1.each do |player| 
      player.waiting_to_play = false
      player.court = 1
      player.save
    end
    redirect_to session_show_path(club: params[:club_id])
  end

  # def random_1
  #   @current_players = params[:current_players]
  #   @random_players_1 = Membership.where(waiting_to_play: true, club_id: params[:club_id], present: true).order(Arel.sql('RANDOM()')).limit(4) 
  #   @random_players_1.each do |player| 
  #     player.waiting_to_play = false
  #     player.save
  #     @current_players[0] << player.id
  #   end
  #   @current_players[0].shift
  #   puts "current players: #{@current_players}"
  #   redirect_to session_show_path(club: params[:club_id], current_players: @current_players)
  # end

  def end_game_1
    @players = Membership.where(id: params[:players])
    @players.each do |player|
      player.waiting_to_play = true
      player.save
    end
    redirect_to session_show_path(club: params[:club_id])
  end

  def random_2
    @random_players_2 = Membership.where(waiting_to_play: true, club_id: params[:club_id], present: true).order(Arel.sql('RANDOM()')).limit(4)
    @players_arr = [] 
    @random_players_2.each do |player| 
      player.waiting_to_play = false
      player.save
      @players_arr << player.id
    end
    redirect_to session_show_path(club: params[:club_id], random_players_2: @players_arr)
  end

  def end_game_2
    @players = Membership.where(id: params[:players])
    @players.each do |player|
      player.waiting_to_play = true
      player.save
    end
    redirect_to session_show_path(club: params[:club_id])
  end


end
