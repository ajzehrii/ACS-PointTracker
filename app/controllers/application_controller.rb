# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[first last student_id email password])
    devise_parameter_sanitizer.permit(:account_update,
                                      keys: %i[first last student_id email password current_password])
  end

  def after_sign_in_path_for(_resource)
    if current_user.admin
      admin_path
    else
      portal_path
    end
  end

  private

  def store_location
    session[:return_to] = request.env['HTTP_REFERER']
  end

  def set_time_zone
    Time.zone = current_user.time_zone
  end
end
