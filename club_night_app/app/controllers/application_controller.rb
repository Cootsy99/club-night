class ApplicationController < ActionController::Base
  before_action :set_query
  def home
        @home  ="Club Night"
  end

  def set_query
    @query = Club.ransack(params[:q])
  end
  
end
