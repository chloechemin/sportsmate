class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:homepage, :my_bookings, :my_activities]

  def dashboard
  end

  def homepage
  end

  def my_bookings
    @user = current_user
    @bookings = Booking.where(user_id: current_user.id)
    # @activity = @bookings.activity_id
  end

  def my_activities
    @activities = Activity.where(user_id: current_user.id)
    # @bookings = Booking.where(activity: @activity)
  end

  # def landing
  # end

end
