class ApplicationController < ActionController::Base
  before_action :configure_sign_up_params, only: [:create], if: :devise_controller?
  before_action :authenticate_user!  
  before_action :set_query
  before_action :set_user, only: %i[home]

  def home
        if current_user.present?
          @name = current_user.name
          @memberships = Membership.where(user_id:  current_user.id)
        else 
          @memberships =[]
        end
  end

  def set_query
    @query = Club.ransack(params[:q])
  end


  private
    def set_user
      if current_user.present?
        @user = current_user
      end 

    end

    protected

  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute, :name, :about, :club_id, :user_id, :admin, :level, :membership_type, :membership_expiry])
  end
end

