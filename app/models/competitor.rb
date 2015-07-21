class Competitor < ActiveRecord::Base
  belongs_to :users
  belongs_to :publications
end
