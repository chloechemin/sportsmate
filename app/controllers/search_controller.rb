class SearchController < ApplicationController
  def index
    @query = Activity.ransack(params[:q])
    @activities = @query.result(distinct: true)
    @users = User.all
    skip_policy_scope
    skip_authorization
  end
end
