class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

def configure_permitted_parameters
  devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:register_number,:name, :email, :password, :password_confirmation, :remember_me, :department_id, :batch_id, :class_section_id) }
  devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:login, :register_number, :email, :password, :remember_me) }
  devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:register_number,:name,:avatar, :department_id, :batch_id, :class_section_id, :email, :password, :password_confirmation, :current_password) }
end
end
