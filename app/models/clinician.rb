class Clinician < ActiveRecord::Base
  belongs_to :user
  has_many :cases
  has_and_belongs_to_many :appointments
  
  def display_name
    "#{first_name} #{last_name}"
  end
  
end
