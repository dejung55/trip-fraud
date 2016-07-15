class CreateAsia < ActiveRecord::Migration
  def change
    create_table :asia do |t|
      
     

      t.timestamps null: false
    end
  end
end
