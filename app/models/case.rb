class Case < ActiveRecord::Base
  belongs_to :user
  belongs_to :clinician
  belongs_to :referrer
  
  has_many :appointments
  
  has_and_belongs_to_many :patients
  
  attr_accessor :user_email

end
