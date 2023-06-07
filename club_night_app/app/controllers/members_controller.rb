class MembersController < ApplicationController
  def index
    @members = Club.find(params[:club_id]).users
    @memberships = Club.find(params[:club_id]).memberships
    @club_name = params[:club_name]
    
  end
end
