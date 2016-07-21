class CreateAmericas < ActiveRecord::Migration
  def change
    create_table :americas do |t|
      
      t.string :img2
      t.string :title2

      t.timestamps null: false
    end
  end
end
