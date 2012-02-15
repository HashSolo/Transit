class CreateCases < ActiveRecord::Migration
  def change
    create_table :cases do |t|
      t.integer :user_id
      t.integer :clinician_id
      t.integer :referrer_id
      t.string :email
      t.timestamps
    end
  end
end
