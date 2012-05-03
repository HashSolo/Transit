class Appointment < ActiveRecord::Base
  belongs_to :case
  has_and_belongs_to_many :clinicians
  has_and_belongs_to_many :patients
  
end
