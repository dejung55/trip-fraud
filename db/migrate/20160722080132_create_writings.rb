class CreateWritings < ActiveRecord::Migration
  def change
    create_table :writings do |t|
      t.string :title
      t.string :content
      
      t.integer :user_id
      t.string :user
      t.string :post_id
      t.string :america_id
      t.string :europe_id
      t.string :africa_id
      t.integer :number, default: 0


      t.timestamps null: false
    end
  end
end
