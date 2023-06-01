class SearchController < ApplicationController
  def index
    @query = Club.ransack(params[:q])
    @clubs = @query.result(distinct: true)
  end
end
