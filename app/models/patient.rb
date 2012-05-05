class Patient < ActiveRecord::Base

  belongs_to :case
  
  has_one :history_female
  has_one :history_male
  
  has_and_belongs_to_many :cases
  has_and_belongs_to_many :appointments  
  
  validates :first_name, 	:presence => true
  validates :last_name, 	:presence => true
  validates :date_of_birth, 	:presence => true
  validates :sex, 	:presence => true
  
  def display_name
    "#{first_name} #{last_name}"
  end

end
