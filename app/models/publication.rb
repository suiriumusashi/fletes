class Publication < ActiveRecord::Base
	has_and_belongs_to_many :origin, :class_name => "City"
	has_and_belongs_to_many :destiny, :class_name => "City"

end
