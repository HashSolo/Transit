class Clinician < ActiveRecord::Base
  belongs_to :user
  has_many :cases
  has_many :appointments
  
  
  
  
end
