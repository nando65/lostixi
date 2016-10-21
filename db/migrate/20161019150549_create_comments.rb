class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|

      t.integer :follower_id, null: false
      t.integer :subject_id, null: false
      t.string :comment
      t.integer :ranking

      t.timestamps null: false
    end
  end
end
