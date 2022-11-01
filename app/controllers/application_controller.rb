class ApplicationController < ActionController::Base

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:first,:last,:student_id, :email, :password])
        devise_parameter_sanitizer.permit(:account_update, keys: [:first,:last,:student_id, :email, :password, :current_password])
    end

    def after_sign_in_path_for(resource)
        if current_user.admin
            admin_path
        else 
            root_path
        end
    end
end
