class Case < ActiveRecord::Base
  belongs_to :user
  belongs_to :clinician
  belongs_to :referrer
  has_many :appointments
  
  attr_accessor :user_email

end
