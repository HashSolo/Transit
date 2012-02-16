class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :encrypted_password
      t.string :salt
      t.boolean :admin
      t.boolean :patient
      t.boolean :clinician
      t.timestamps
    end
  end
end
