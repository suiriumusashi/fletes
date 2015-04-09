class ClientsController < ApplicationController
	authorize_resource :class => false
	def index
		@clients = User.where(role: 'cliente')
	end

	def show
		@client = User.find(params[:id])
  	end
end
