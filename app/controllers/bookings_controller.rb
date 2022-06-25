class BookingsController < ApplicationController
  before_action :set_offer, only: [:show, :edit, :update, :destroy, :accept, :decline ]

  def accept
    if @booking.accepted!
      redirect_to @booking, notice: 'Booking accepted'
    else
      redirect_to @booking, notice: 'Booking not accepted, please try again'
    end
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
