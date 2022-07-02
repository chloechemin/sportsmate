class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :homepage

  def dashboard
  end

  def homepage
  end

<<<<<<< HEAD
  def dashborad
    redirect_to activities_path()
  end

  def my_bookings
  end
=======

  # def landing
  # end

>>>>>>> master
end
