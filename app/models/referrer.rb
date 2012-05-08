class Referrer < ActiveRecord::Base
  has_many :cases
  
  def display_name
    "#{first_name} #{last_name}"
  end
  
end
