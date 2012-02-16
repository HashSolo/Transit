class CreateReferrers < ActiveRecord::Migration
  def change
    create_table :referrers do |t|
      t.integer :case_id
      t.string :first_name
      t.string :last_name
      t.string :practice_name
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :email
      t.string :website

      t.timestamps
    end
  end
end
