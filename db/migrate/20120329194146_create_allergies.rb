class CreateAllergies < ActiveRecord::Migration
  def change
    create_table :allergies do |t|

      t.integer :history_female_id
      t.integer :history_male_id
      t.string :name
      t.string :comment

      t.timestamps
    end
  end
end
