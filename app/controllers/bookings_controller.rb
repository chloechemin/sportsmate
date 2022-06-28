class BookingsController < ApplicationController

  # def index
  #   @booking = Booking.all
  # end

  def new
    @activity = Activity.find(params[:activity_id])
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @activity = Activity.find(params[:activity_id])
    authorize @booking
    @booking.activity = @activity
    @booking.user = current_user
    @booking.status = "Not confirmed"
    if @booking.save
      redirect_to activity_booking_path(@activity, @booking)
    else
      render :new
    end
  end


  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end


  def accept
    @booking = Booking.find(params[:id])
    @booking.status = "Confirmed"
    @booking.save
    redirect_to activity_booking_path([@booking.activity, @booking])
    skip_policy_scope
    skip_authorization
  end

  def decline
    @booking = Booking.find(params[:id])
    @booking.status = "Not confirmed"
    @booking.save
    redirect_to activity_booking_path([@booking.activity, @booking])
    skip_policy_scope
    skip_authorization
  end


  def edit
    @booking = Booking.find(params[:id])
    @activity = @booking.activity
    authorize @booking
  end

  def update
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.update(booking_params)
    redirect_to activity_booking_path
  end

  def destroy
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.destroy
    redirect_to activities_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_time, :end_time, :status, :spots_required, :user_id, :activity_id, :booking_id)
  end
end
