class MembersController < ApplicationController
  def index
    @members = Club.find(params[:club_id]).users
    @club_name = params[:club_name]
    
  end
end
