class Appointment < ActiveRecord::Base
  belongs_to :case
  belongs_to :clinician
end
