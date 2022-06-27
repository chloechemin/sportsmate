class ActivitiesController < ApplicationController
  def index
    @activities = policy_scope(Activity)
  end

  def new
    @activity = Activity.new
    authorize @activity
  end

  def show
    @activity = Activity.find(params[:id])
    authorize @activity
  end

  def create
    @activity = Activity.new(activity_params)
    @activity.user = current_user
    authorize @activity
    if @activity.save
      redirect_to activity_path(@activity)
    else
      render :new
    end
  end

  def edit
    @activity = Activity.find(params[:id])
    authorize @activity
  end

  def update
    @activity = Activity.find(params[:id])
    # @activity.user = current_user
    @activity.update(activity_params)
    authorize @activity
    redirect_to activity_path(@activity)
  end

  def destroy
    @activity = Activity.find(params[:id])
    @activity.destroy
    authorize @activity
    redirect_to activities_path
  end

  private

  def activity_params
    params.require(:activity).permit(:title, :description, :level, :location, :price, :group_size, :user_id)
  end
end
