class CreateAppointmentsPatientsTable < ActiveRecord::Migration
  def up
    create_table :appointments_patients, :id => false do |t|
      t.references :appointment
      t.references :patient
    end
  end

  def down
    drop_table :appointments_patients
  end
end
