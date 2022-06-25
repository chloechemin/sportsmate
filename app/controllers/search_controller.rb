class SearchController < ApplicationController
  def index
    @query = Activity.ransack(params[:q])
    @activities = @query.result(distinct: true)
    @users = User.all
  end
end
