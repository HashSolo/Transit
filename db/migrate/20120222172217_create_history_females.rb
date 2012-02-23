class CreateHistoryFemales < ActiveRecord::Migration
  def change
    create_table :history_females do |t|
      t.integer :patient_id
      t.integer :pregnancies

      t.timestamps
    end
  end
end
