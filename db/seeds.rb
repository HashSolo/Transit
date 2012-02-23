# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

#clinicians = Clinician.create!([{:first_name => 'Clinican 1'}, {:first_name => 'Clinician 2'}])
#referrers = Referrer.create([{:first_name => 'Referrer 1'}, {:first_name => 'Referrer 2'}])
user = User.create({:email => 'cfclevel@gmail.com', :password => 'foobar'})
