class AddColumnsToPost < ActiveRecord::Migration
  def change
    add_column :posts, :origin, :string
    add_column :posts, :destination, :string
    add_column :posts, :item_name, :string
    add_column :posts, :item_description, :string
    add_column :posts, :reward_amount, :integer
  end
end
