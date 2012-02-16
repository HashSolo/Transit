class ChangeCases < ActiveRecord::Migration
  def up
    remove_column :cases, :email
    change_column :cases, :status, :boolean, :default => true
  end

  def down
    add_column :cases, :email
    change_column :cases, :status, :boolean
  end
end
