class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
:omniauthable, :omniauth_providers => [:facebook]


  has_many :comments_commentator, foreign_key: :subject_id, class_name: 'User'
  has_many :comments_commentee, foreign_key: :follower_id, class_name: 'User'
  has_many :posts
end
