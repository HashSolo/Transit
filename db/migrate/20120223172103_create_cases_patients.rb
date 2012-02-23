class CreateCasesPatients < ActiveRecord::Migration
  def up
    create_table :cases_patients, :id => false do |t|
      t.references :case
      t.references :patient
    end
  end

  def down
    drop_table :cases_patients
  end
end
