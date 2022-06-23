class BookingsController < ApplicationController

  # def index
  #   @booking = Booking.all
  # end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to booking_path(@booking)
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
