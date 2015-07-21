class Sale < ActiveRecord::Base
	belongs_to :admin
	belongs_to :publication
end
