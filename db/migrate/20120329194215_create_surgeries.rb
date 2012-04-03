class CreateSurgeries < ActiveRecord::Migration
  def change
    create_table :surgeries do |t|

      t.integer :history_female_id
      t.integer :history_male_id
      t.date :surgery_date
      t.string :indication
      t.string :surgery_name
      t.string :finding
      t.boolean :complications

      t.timestamps
    end
  end
end
