class SessionController < ApplicationController
  def show
    @club = Club.find(params[:club])
    @members = params[:members]
  end

  def available_members
    @club = Club.find(params[:club])
  end

  def update_attendance
    puts "!OASHHHHDwhbfvhewbh"
    @membership = Membership.find(params[:membership])
    @membership.present = params[:present] || false
    puts @membership.present
    @membership.save
  end
end
