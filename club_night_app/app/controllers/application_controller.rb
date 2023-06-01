class ApplicationController < ActionController::Base
  before_action :set_query
  before_action :set_user, only: %i[home]

  def home
        @home  ="Club Night"
        @memberships = Membership.where(user_id:  current_user.id)


  end

  def set_query
    @query = Club.ransack(params[:q])
  end


  private
    def set_user
        @user = current_user
    end
end
