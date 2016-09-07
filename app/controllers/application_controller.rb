class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

def access_denied(exception)
    flash[:danger] = exception.message
    redirect_to root_url
  end



private
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) << :name
    devise_parameter_sanitizer.permit(:sign_up) << :phone
    devise_parameter_sanitizer.permit(:sign_up) << :adres
    devise_parameter_sanitizer.permit(:account_update) << :name
    devise_parameter_sanitizer.permit(:account_update) << :adres
    devise_parameter_sanitizer.permit(:account_update) << :phone
  end

end
