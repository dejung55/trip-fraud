class CreateAsia1s < ActiveRecord::Migration
  def change
    create_table :asia1s do |t|
      
      t.string :asiaimg
      t.string :asia_1
      t.string :asia_2
      t.string :asia_3
      t.integer :post_id

      t.timestamps null: false
    end
  end
end
