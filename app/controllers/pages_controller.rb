class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def dashborad
    redirect_to activities_path()
  end
end
