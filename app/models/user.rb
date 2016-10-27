class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable,
  :omniauthable, :omniauth_providers => [:facebook]


  has_many :comments_commentator, foreign_key: :subject_id, class_name: 'Comment'
  has_many :comments_commentee, foreign_key: :follower_id, class_name: 'Comment'
  has_many :posts

  has_attached_file :profile_picture, styles: { medium: "300x300#", thumb: "100x100#", small: "36x36#" }
  validates_attachment_content_type :profile_picture, content_type: /\Aimage\/.*\Z/


 def self.from_omniauth(auth)

    uri = URI.parse(auth.info.image)
        uri.query = 'type=large'

      where(provider: auth.provider, uid: auth.uid).first_or_create do |user|


        user.name = auth.extra.raw_info.name
        user.profile_picture = open( uri.to_s, allow_redirections: :safe )
        user.provider = auth.provider
        user.uid = auth.uid
        user.email = auth.info.email
        user.password = Devise.friendly_token[0,20]

      end
  end


end
