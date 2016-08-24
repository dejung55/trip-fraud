class CreateAfr1s < ActiveRecord::Migration
  def change
    create_table :afr1s do |t|

      t.string :afrimg
      t.integer :africa_id


      t.timestamps null: false
    end
  end
end
