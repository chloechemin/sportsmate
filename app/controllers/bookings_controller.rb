class BookingsController < ApplicationController
  before_action :set_offer, only: [:show, :edit, :update, :destroy, :accept, :decline ]

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


  def accept
    @booking = Booking.find(params[:id])
    @booking.status = "Accepted"
    @booking.save
      redirect_to activity_booking_path([@booking.activity, @booking])
  end

  def decline
    if @booking.rejected!
      redirect_to @booking, notice: 'Booking declined'
    else
      redirect_to @booking, notice: "Booking could not be declined, please try again"
    end
  end

  private

  def set_offer
    @booking = Booking.find(params[:id])
  end
end

  private

  def booking_params
    params.require(:booking).permit(:start_time, :end_time, :status, :spots_required, :user_id, :activity_id)
  end
end
