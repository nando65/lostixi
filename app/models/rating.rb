class Rating < ActiveRecord::Base
    belongs_to :star_giver, foreign_key: :follower_id, class_name: 'User'
    belongs_to :star_receiver, foreign_key: :subject_id, class_name: 'User'
end
