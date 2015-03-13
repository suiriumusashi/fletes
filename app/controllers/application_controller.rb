class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

 	#Sirve para resolver el problema al pasar los parametros al crear un nuevo registro
 	before_filter do
	  resource = controller_name.singularize.to_sym
	  method = "#{resource}_params"
	  params[resource] &&= send(method) if respond_to?(method, true)
	end

	#end

  	before_filter :configure_permitted_parameters, if: :devise_controller?

	rescue_from CanCan::AccessDenied do |exception|
    	redirect_to root_url, :alert => "No tienes permisos para entrar a esta pagina"
 	end

    protected

        def configure_permitted_parameters
            devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:user, :email, :password, :first_name, :last_name, :role) }
            devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:first_name, :email, :password, :current_password, :last_name, :date_of_birth, :role) }
        end

        #Redireccionamiento de devise

        def after_sign_in_path_for(resource)
          "/dashboard"
        end

        def after_update_path_for(resource)
          "/dashboard"
        end
end
