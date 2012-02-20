class AddDemographicstoPatient < ActiveRecord::Migration
  def up
    add_column :patients, :date_of_birth, :date
    add_column :patients, :first_name, :string
    add_column :patients, :last_name, :string    
    add_column :patients, :sex, :string
    add_column :patients, :ethnicity, :string
    add_column :patients, :marital_status, :string
    add_column :patients, :occupation, :string
    
  end

  def down
    remove_column :patients, :date_of_birth
    remove_column :patients, :first_name
    remove_column :patients, :last_name
    remove_column :patients, :sex
    remove_column :patients, :ethnicity
    remove_column :patients, :marital_status
    remove_column :patients, :occupation
  end
end
