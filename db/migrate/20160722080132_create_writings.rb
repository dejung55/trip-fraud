class CreateWritings < ActiveRecord::Migration
  def change
    create_table :writings do |t|
      t.string :title
      t.string :content
      t.string :post_id
      t.string :america_id
      t.string :europe_id
      t.string :africa_id
      

      t.timestamps null: false
    end
  end
end
