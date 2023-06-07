class MembershipsController < ApplicationController
    before_action :authenticate_user!  
    before_action :set_membership, only: %i[ show edit update destroy ]

  def index
    @memberships = Membership.all
  end

  def show
  end

  def new
    @membership = Membership.new
  end

  def edit
  end

  def create
    @membership = Membership.new(membership_params)

    respond_to do |format|
      if @membership.save
        format.html { redirect_to user_path(current_user), notice: "Membership was successfully created." }
        # format.json { render :show, status: :created, location: @appointment }
      else
        format.html { render :new, status: :unprocessable_entity }
        # format.json { render json: @appointment.errors, status: :unprocessable_entity }
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
    puts "SEARCHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH"
    search_query = params[:search]
    puts "search query is #{search_query}"
    @clubs = Club.where("name LIKE ?", "%#{search_query}%")
    @users = User.where("name LIKE ?", "%#{search_query}%")
    if !@users.empty? || !@clubs.empty?
      @memberships = Membership.where(user_id: @users.pluck(:id)).or(Membership.where(club_id: @clubs.pluck(:id)))
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
      params.require(:membership).permit(:club_id, :user_id, :admin, :level, :present, :membership_type, :membership_expiry)
    end
end
