class BookingsController < ApplicationController

  # def index
  #   @booking = Booking.all
  # end

  def new
    @booking = Booking.new
    @activity = Activity.find(params[:activity_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @activity = Activity.find(params[:activity_id])
    @booking.activity = @activity
    @booking.user = current_user
    @booking.status = "Not confirmed"
    if @booking.save
      redirect_to activity_path(@activity)
    else
      render :new
    end
  end

  # def show
  #   @booking = Booking.find(params[:id])
  # end

  private

  def booking_params
    params.require(:booking).permit(:start_time, :end_time, :status, :spots_required, :user_id, :activity_id)
  end
end
