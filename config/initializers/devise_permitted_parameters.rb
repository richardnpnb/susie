module DevisePermittedParameters
  extend ActiveSupport::Concern

  included do
    before_filter :configure_permitted_parameters
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :name
    # #004 appended "<< job_title" to next line
    devise_parameter_sanitizer.for(:account_update) << :name << :job_title

  end

end

DeviseController.send :include, DevisePermittedParameters
