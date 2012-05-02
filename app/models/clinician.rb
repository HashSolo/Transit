class Clinician < ActiveRecord::Base
  belongs_to :user
  has_many :cases
  has_and_belongs_to_many :appointments
  
end
