class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.integer :like_id
      t.integer :timeline_id
      t.integer :user_id

      t.timestamps null: false
    end
    add_index :likes, [:like_id, :timeline_id, :user_id], :unique => true
  end
end
