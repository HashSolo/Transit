class Pregnancy < ActiveRecord::Base
  
  belongs_to :history_female
  belongs_to :history_male
  
  
  
end
