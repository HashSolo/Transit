class CreateAppointmentsCliniciansTable < ActiveRecord::Migration
  def up
    create_table :appointments_clinicians, :id => false do |t|
      t.references :appointment
      t.references :clinician
    end
    add_index :appointments_clinicians, [:appointment_id, :clinician_id]
    add_index :appointments_clinicians, [:clincian_id, :appointment_id]
  end

  def down
    drop_table :appointments_clinicians
  end
end
