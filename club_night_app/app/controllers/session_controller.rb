class SessionController < ApplicationController
  def show
    @club = Club.find(params[:club])
    @members = params[:members]
  end

  def available_members
    @club = Club.find(params[:club])
  end
end
