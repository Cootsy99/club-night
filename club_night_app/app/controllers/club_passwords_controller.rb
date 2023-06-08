class ClubPasswordsController < ApplicationController
  before_action :authenticate_user!  
  before_action :set_club_password, only: %i[edit update]

  def new
    @club_password = ClubPassword.new
  end

  def create
    @club_password = ClubPassword.new(club_password_params)

    respond_to do |format|

      if @club_password.save
        format.html { redirect_to @club_password.club, notice: "Club password was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
        # format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
    if @club_password
      respond_to do |format|
        if @club_password.update(club_password_params)
          format.html { redirect_to @club_password.club, notice: "Club password was successfully updated." }
        else
          format.html { render :edit, status: :unprocessable_entity }
        end
      end
    else
      head :no_content
    end
  end

  private

  def set_club_password
    @club_password = ClubPassword.find(params[:id])
  end

  def club_password_params
    params.require(:club_password).permit(:password, :club_id)
  end

end
