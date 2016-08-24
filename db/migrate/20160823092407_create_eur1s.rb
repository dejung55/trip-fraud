class CreateEur1s < ActiveRecord::Migration
  def change
    create_table :eur1s do |t|

      t.string :eurimg
      t.integer :europe_id

      t.timestamps null: false
    end
  end
end
