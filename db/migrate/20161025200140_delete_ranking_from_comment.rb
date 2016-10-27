class DeleteRankingFromComment < ActiveRecord::Migration
  def change
    remove_column :comments, :ranking
  end
end
