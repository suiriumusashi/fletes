class City < ActiveRecord::Base
  belongs_to :state
  has_many :users
  has_and_belongs_to_many :publications
end
