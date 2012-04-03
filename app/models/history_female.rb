class HistoryFemale < ActiveRecord::Base
  belongs_to :patient
  
  has_many :allergies
  has_many :medical_conditions
  has_many :medications
  has_many :pregnancies
  has_many :stds
  has_many :surgeries
  
end
