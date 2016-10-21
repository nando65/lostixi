class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|

      t.belongs_to :user
      t.belongs_to :packet

      t.timestamps null: false
    end
  end
end
