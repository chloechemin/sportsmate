class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :homepage

  def dashboard
  end

  def homepage
  end


  # def landing
  # end

end
