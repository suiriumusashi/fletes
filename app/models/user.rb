class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    
    has_many :inboxes
    has_many :publications
    accepts_nested_attributes_for :publications
    belongs_to :city
    has_and_belongs_to_many :services
    has_and_belongs_to_many :trucks
    has_and_belongs_to_many :loads
    has_and_belongs_to_many :ratings
end
