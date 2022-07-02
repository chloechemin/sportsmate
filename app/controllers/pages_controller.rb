class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def homepage
  end

  def dashborad
    redirect_to activities_path()
  end

  def my_bookings
  end
end
