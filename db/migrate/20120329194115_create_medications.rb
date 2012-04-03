class CreateMedications < ActiveRecord::Migration
  def change
    create_table :medications do |t|

      t.integer :history_female_id
      t.integer :history_male_id
      t.string :name
      t.string :finding
      
      t.timestamps
    end
  end
end
