class CreateEuropes < ActiveRecord::Migration
  def change
    create_table :europes do |t|
      
      t.string :title1
      t.string :img1

      t.timestamps null: false
    end
  end
end
