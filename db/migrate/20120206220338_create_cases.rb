class CreateCases < ActiveRecord::Migration
  def change
    create_table :cases do |t|
      t.integer :user_id
      t.string :email
      t.integer :referrer_id

      t.timestamps
    end
  end
end
