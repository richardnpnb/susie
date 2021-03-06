class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

# #004 fixing job_title not updating - added next 5 lines
  before_filter :configure_permitted_parameters, if: :devise_controller?
  protected
  def configure_permitted_parameters
#    devise_parameter_sanitizer.for(:sign_in) << :name << :job_title
#    devise_parameter_sanitizer.for(:sign_up) << :name << :job_title
    devise_parameter_sanitizer.for(:account_update) << :name << :job_title ## add the attributes you want to permit 
  end


 
 
end
