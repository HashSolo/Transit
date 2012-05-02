class Appointment < ActiveRecord::Base
  belongs_to :case
  has_and_belongs_to_many :clinicians
  
end
