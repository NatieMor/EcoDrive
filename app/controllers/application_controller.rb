class ApplicationController < ActionController::Base
    include Pagy::Backend
    Pagy::DEFAULT[:items] = 2
    require 'pagy/extras/bootstrap'
    
    before_action :configure_permitted_parameters, if: :devise_controller?
#usuario cliente
before_action  only: %i[:index, :show ] do
    authorize_request (["cliente", "admin"])
  end
  #usuario administrador
  before_action  only: %i[:new, :edit, :create] do
    authorize_request (["admin"])
  end

    protected
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :encrypted_password, :role])
        devise_parameter_sanitizer.permit(:account_update, keys: [:email, :encrypted_password, :role])
    end
    def after_sign_in_path_for(resource)
        nosotros_index_path
        end
    def authorize_request(kind = nil)
        unless kind.include?(current_user.role)
            redirect_to new_auto_path, notice: "bienvenido"
        end
    end
end
