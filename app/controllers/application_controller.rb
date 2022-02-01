class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!, except: [:top]
  
  protected
  
  def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :name, :graduate, :birthday, :user_id])
  end
  
  def after_sign_in_path_for(resource)
      if current_user
        home_about_path
      else
        user_session_path
      end
  end
end
