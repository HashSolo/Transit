class CreateAppointmentsCliniciansTable < ActiveRecord::Migration
  def up
    create_table :appointments_clinicians, :id => false do |t|
      t.references :appointment
      t.references :clinician
    end
  end

  def down
    drop_table :appointments_clinicians
  end
end
