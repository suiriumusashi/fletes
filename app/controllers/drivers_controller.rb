class DriversController < ApplicationController
	authorize_resource :class => false
	def index
		@clients = User.where(role: 'transportista')
	end

	def show
		@client = User.find(params[:id])
  	end
end
