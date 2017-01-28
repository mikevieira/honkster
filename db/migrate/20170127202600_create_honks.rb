class CreateHonks < ActiveRecord::Migration
  def change
    create_table :honks do |t|
      t.text :content
      t.integer :user_id

      t.timestamps
    end
  end
end
