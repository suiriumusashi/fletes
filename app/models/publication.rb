class Publication < ActiveRecord::Base
	belongs_to :user
	has_and_belongs_to_many :services
    has_and_belongs_to_many :trucks
    has_and_belongs_to_many :loads
    has_and_belongs_to_many :users
end
