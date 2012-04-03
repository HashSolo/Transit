class CreateMedicalConditions < ActiveRecord::Migration
  def change
    create_table :medical_conditions do |t|

      t.integer :history_female_id
      t.integer :history_male_id
      t.string :condition
      t.string :finding

      t.timestamps
    end
  end
end
