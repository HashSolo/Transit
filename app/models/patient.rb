class Patient < ActiveRecord::Base

  belongs_to :case
  
  has_one :history_female
  has_one :history_male
  
  has_and_belongs_to_many :cases

end
