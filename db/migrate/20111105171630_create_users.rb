class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :encrypted_password
      t.string :salt
      t.string :permalink
      t.string :role
      t.boolean :admin
      t.boolean :patient
      t.timestamps
    end
  end
end
