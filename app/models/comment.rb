class Comment < ActiveRecord::Base

    belongs_to :commenter,foreign_key: :follower_id, class_name: 'User'
    belongs_to :commentee, foreign_key: :subject_id, class_name: 'User'

end
