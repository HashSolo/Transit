class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.integer :case_id
      t.integer :clinician_id
      t.datetime :date_and_time
      t.string :appointment_type

      t.timestamps
    end
  end
end
