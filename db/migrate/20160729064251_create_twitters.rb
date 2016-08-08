class CreateTwitters < ActiveRecord::Migration
  def change
    create_table :twitters do |t|
      
      t.string :twitter_title
      t.string :twitter_content
      t.string :twitter_name 

      t.timestamps null: false
    end
  end
end
