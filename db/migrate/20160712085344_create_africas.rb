class CreateAfricas < ActiveRecord::Migration
  def change
    create_table :africas do |t|
      
      t.string :img
      t.string :title

      t.timestamps null: false
    end
  end
end
