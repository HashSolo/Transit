class CreateHistoryMales < ActiveRecord::Migration
  def change
    create_table :history_males do |t|
      t.integer :patient_id
      t.boolean :prior_infertility

      t.timestamps
    end
  end
end
