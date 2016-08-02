class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      
      t.string :img3
      t.string :title3

      t.timestamps null: false
    end
  end
end
