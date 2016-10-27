class AddFollowerSubjectToRatings < ActiveRecord::Migration
  def change

     add_column :ratings, :follower_id, :integer
     add_column :ratings, :subject_id, :integer
      remove_column :ratings, :comment_id
            remove_column :ratings, :user_id
  end
end
