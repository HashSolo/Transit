class CreateClinicians < ActiveRecord::Migration
  def change
    create_table :clinicians do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :user_id
      t.string :role

      t.timestamps
    end
  end
end
