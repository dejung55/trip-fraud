class CreateTwitterComments < ActiveRecord::Migration
  def change
    create_table :twitter_comments do |t|
      t.string :twitter_id
      t.string :twitter_comment

      t.timestamps null: false
    end
  end
end
