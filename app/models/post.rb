class Post < ActiveRecord::Base
  attr_accessible :content
  belongs_to :clinician
  
  def display_time
    "#{created_at.strftime("%r | %D")}"
  end
  
end
