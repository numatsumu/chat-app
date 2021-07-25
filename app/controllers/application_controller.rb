class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configue_permitted_parameters, if: :devise_contoroller?

  private
  def configue_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end

