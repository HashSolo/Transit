class ChangeUserColumns < ActiveRecord::Migration
  def up
    rename_column :users, :admin, :admin_account
    rename_column :users, :patient, :patient_account
    rename_column :users, :clinician, :clinician_account        
    
    change_column :users, :admin_account, :boolean, :default => false
    change_column :users, :patient_account, :boolean, :default => false
    change_column :users, :clinician_account, :boolean, :default => false        
  end

  def down
    rename_column :users, :admin_account, :admin
    rename_column :users, :patient_account, :patient    
    rename_column :users, :clinician_account, :clinician        

    change_column :users, :admin, :boolean
    change_column :users, :patient, :boolean
    change_column :users, :clinician, :boolean
  end
end
