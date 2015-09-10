class DriversController < ApplicationController
	authorize_resource :class => false
	def index
		@clients = User.where(role: ['transportista', 'etransportista'])
	end

	def show
		@client = User.find(params[:id])
  	end

  	def search
	  	@clients = User.where("state_origin LIKE ? OR city_origin like ?", "%#{params[:q]}%", "%#{params[:q]}%")
	end
end
