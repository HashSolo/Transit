class CreatePregnancies < ActiveRecord::Migration
  def change
    create_table :pregnancies do |t|
      t.integer :history_female_id
      t.integer :history_male_id
      t.date :date
      t.string :gender
      t.boolean :current_partner
      t.integer :months_to_conception
      t.boolean :difficulty_conceiving
      t.boolean :fertility_treatment
      t.string :type
      t.string :outcome
      t.string :delivery_type
      t.timestamps
    end
  end
end
