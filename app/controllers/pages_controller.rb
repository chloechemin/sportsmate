class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def dashboard
  end

  def homepage
  end


  def landing
  end

end
