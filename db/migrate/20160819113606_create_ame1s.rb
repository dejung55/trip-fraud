class CreateAme1s < ActiveRecord::Migration
  def change
    create_table :ame1s do |t|

      t.string :ameimg
      t.integer :america_id

      t.timestamps null: false
    end
  end
end
