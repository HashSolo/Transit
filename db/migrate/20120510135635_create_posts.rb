class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :content
      t.integer :clinician_id

      t.timestamps
    end
  end
end
