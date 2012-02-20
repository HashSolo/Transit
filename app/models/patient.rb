class Patient < ActiveRecord::Base

  belongs_to :case
  has_one :history

end
