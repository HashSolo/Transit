class FixFemaleHistoryColumn < ActiveRecord::Migration
  def up
    rename_column :history_females, :pregnancies, :pregnancy_count
  end

  def down
  end
end
