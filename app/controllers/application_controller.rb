class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
before_filter :authenticate_user!
before_filter :configure_permitted_parameters, if: :devise_controller?
  # For APIs, you may want to use :null_session instead.
include UsersHelper
  protect_from_forgery with: :exception

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :phonenumber, :email, :password, :password_confirmation) }
  end
end
