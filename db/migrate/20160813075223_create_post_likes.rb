class CreatePostLikes < ActiveRecord::Migration
  def change
    create_table :post_likes do |t|
      
      t.integer :user_id
      t.integer :writing_id

      t.timestamps null: false
    end
  end
end
