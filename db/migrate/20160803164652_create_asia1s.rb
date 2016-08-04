class CreateAsia1s < ActiveRecord::Migration
  def change
    create_table :asia1s do |t|
      
      t.string :asiaimg
      t.integer :post_id

      t.timestamps null: false
    end
  end
end
