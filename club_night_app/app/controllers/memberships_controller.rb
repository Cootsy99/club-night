class MembershipsController < ApplicationController
    before_action :authenticate_user!  
    before_action :set_membership, only: %i[ show edit update destroy ]

  def index
    @admin_clubs = Membership.where(user_id: current_user.id, admin: true).pluck(:club_id)
    @memberships = Membership.where(club_id: @admin_clubs)
  end

  def show
  end

  def new
    @membership = Membership.new
    @club = Club.find(params[:club_id])
    @club_memberships = @club.memberships.count
  end

  def edit
    @club_id = @membership.club_id
    @club_name = Club.find(@club_id).name
    user_membership = Membership.where(user_id: current_user.id, club_id: @club_id).limit(1)
    if user_membership.exists?
      @is_admin = user_membership[0].admin
    else
      @is_admin = false
    end
  end

  def create
    @membership = Membership.new(membership_params)
    @proper_password = Club.find(params[:membership][:club_id]).password
    puts "PROPER PASSWORD: #{@proper_password}"
    @membership.club_password = params[:membership][:club_password]
    @entered_passsword = @membership.club_password


    respond_to do |format|
      if @proper_password == @entered_passsword
        if @membership.save
          format.html { redirect_to user_path(current_user), notice: "Membership was successfully created." }
          # format.json { render :show, status: :created, location: @appointment }
        else
          format.html { render :new, status: :unprocessable_entity }
          # format.json { render json: @appointment.errors, status: :unprocessable_entity }
        end
      else
        format.html { redirect_to club_path(params[:membership][:club_id]), notice: "Password was not correct" }
      end
    end
  end

  def update
    puts("UPDATED")
    if @membership
      respond_to do |format|
        if @membership.update(membership_params)
          format.html { redirect_to edit_membership_path(@membership), notice: "Membership was successfully updated." }
          # format.json { render :show, status: :ok, location: @appointment }
        else
          format.html { render :edit, status: :unprocessable_entity }
          # format.json { render json: @appointment.errors, status: :unprocessable_entity }
        end
      end
    else
      # render json: {status: @membership.present}
      # render 
      head :no_content
    end
  end


  def destroy
    @membership.destroy

    respond_to do |format|
      format.html { redirect_to user_path(current_user), notice: "Membership was successfully destroyed." }
    #   format.json { head :no_content }
    end
  end

  def search
    @admin_clubs = Membership.where(user_id: current_user.id, admin: true).pluck(:club_id)
    # @memberships = Membership.where(club_id: @admin_clubs)

    search_query = params[:search]
    @clubs= Club.where("name ILIKE ?", "%#{search_query}%").pluck(:id)
    @users = User.where("name ILIKE ?", "%#{search_query}%").pluck(:id)


    if !@users.empty? || !@clubs.empty?
      @memberships = Membership.where(user_id: @users, club_id: @admin_clubs).or(Membership.where(club_id: @clubs & @admin_clubs))
    end
    render :index
  end

  private
    def set_membership
      if params[:id]
        @membership = Membership.find(params[:id])
      end
    end

    def membership_params
      params.require(:membership).permit(:club_id, :user_id, :admin, :level, :present, :membership_type, :membership_expiry, :club_password)
    end
end
