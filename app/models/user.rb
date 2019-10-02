class User < ApplicationRecord
    has_secure_password
    has_many :user_preferences
    has_many :preferences, through: :user_preferences
    has_many :posts
    validates :user_name, presence: true
    validates :user_name, uniqueness: true
    validates :name, presence: true
    validates :age, presence: true
    validates :bio, presence: true
    validates :password, presence: true
    
end
