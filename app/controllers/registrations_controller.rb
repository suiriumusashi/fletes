class RegistrationsController < Devise::RegistrationsController


	private
    def sign_up_params
  	params.require(:user).permit(:user, :email, :password, :password_confirmation, :first_name, :last_name, :role, :avatar, :phone)
    end

  	def account_update_params
  	 	params.require(:user).permit(:first_name, :last_name, :role, :avatar, :phone, :celphone, :phone_extra, :city_origin, :state_origin, :state_more, :update_profile, :state, :city, :street, :number_out, :number_in, :colony, :postal, :company, :rfc, :description, :email, :password, :current_password,  :role, {:service_ids => []}, {:truck_ids => []}, {:load_ids => []})
  	end
end