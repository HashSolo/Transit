class Patient < ActiveRecord::Base

  belongs_to :case
  has_one :history_female
  has_one :history_male

end
