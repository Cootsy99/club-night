class SearchController < ApplicationController
  before_action :authenticate_user!  

  def index
    @query = Club.ransack(params[:q])
    @clubs = @query.result(distinct: true)
  end
end
