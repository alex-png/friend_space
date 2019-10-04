class User < ApplicationRecord
    has_secure_password
    has_many :user_preferences
    has_many :preferences, through: :user_preferences
    has_many :posts
    has_many :commenters, foreign_key: :commenter_id, class_name: 'ProfileComment'
    has_many :comments, foreign_key: :comment, class_name: 'ProfileComment'
    has_many :followed_users, foreign_key: :follower_id, class_name: 'Follow'
    has_many :followees, through: :followed_users
    has_many :following_users, foreign_key: :followee_id, class_name: 'Follow'
    has_many :followers, through: :following_users


    validates :user_name, presence: true, on: :create
    validates :user_name, uniqueness: true
    validates :name, presence: true, on: :create
    validates :age, presence: true, on: :create
    validates :bio, presence: true, on: :create
    validates :password, presence: true, on: :create
    validates :image, presence: true, on: :create
end
