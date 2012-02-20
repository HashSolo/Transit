class AddCaseIDtoPatient < ActiveRecord::Migration
  def up
    add_column :patients, :case_id, :integer
  end

  def down
    remove_column :patients, :case_id
  end
end
