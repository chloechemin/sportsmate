class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :set_query

  def set_query
    @query = Activity.ransack(params[:id])
  end

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])

    #SHOULD WE CHANGE PERMITTED PARAMS BACK TO FIRST NAME?

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end

end
