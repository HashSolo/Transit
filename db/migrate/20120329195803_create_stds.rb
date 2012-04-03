class CreateStds < ActiveRecord::Migration
  def change
    create_table :stds do |t|

      t.integer :history_female_id
      t.integer :history_male_id
      t.string :infection
      t.string :comment

      t.timestamps
    end
  end
end
