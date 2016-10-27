class AddRankingToUsers < ActiveRecord::Migration
  def change
    add_column :users, :traveler_ranking, :integer
      add_column :users, :shipper_ranking, :integer
  end
end
