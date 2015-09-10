module Admins
	class RegistrationsController < Devise::RegistrationsController
		private
	  		def sign_up_params
		 		params.require(:admin).permit(:email, :password, :password_confirmation, :first_name, :last_name, :role, :token_admin)
		 	end

		 	def account_update_params
		 		params.require(:admin).permit(:first_name, :email, :password, :current_password, :last_name, :date_of_birth, :role)
		 	end
	end
end