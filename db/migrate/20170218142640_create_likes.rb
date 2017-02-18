class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.intger :like_id
      t.intger :timeline_id
      t.intger :user_id

      t.timestamps null: false
    end
    add_index :likes, [:like_id, :timeline_id, :user_id], :unique => true
  end
end
