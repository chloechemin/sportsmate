class BookingsController < ApplicationController

  # def index
  #   @booking = Booking.all
  # end

  def new
    @booking = Booking.new
    @activity = Activity.find(params[:activity_id])
  end

  def show
    @booking = Booking.find(params[:id])
    # @activity = Activity.find(params[:activity_id])
  end

  def create
    @activity = Activity.find(params[:activity_id])
    @booking = Booking.new(booking_params)
    @booking.activity = @activity
    @booking.user = current_user
    @booking.status = "Not confirmed"
    if @booking.save
      redirect_to activity_path(@activity)
      # redirect_to activity_booking_path([@activity, @booking])
    else
      render :new
    end
  end

  def edit
    @activity = Booking.activity.find(params[:activity_id])
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to activity_booking_path([@activity, @booking])
  end

  private

  def booking_params
    params.require(:booking).permit(:start_time, :end_time, :status, :spots_required)
  end
end
