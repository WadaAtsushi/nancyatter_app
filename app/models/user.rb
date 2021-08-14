class User < ApplicationRecord
    has_secure_password

    validates :name, presence: true
    validates :email, presence: true
    validates :password, presence: true, uniqueness: true

    has_many :posts
    has_many :menburs
    has_many :nancyatterapps
    has_many :active_relationships, class_name: "Relationship",
                    foreign_key: "follower_id",
                    dependent: :destroy
    has_many :passive_relationships, class_name: "Relationship",
                    foreign_key: "followed_id",
                    dependent: :destroy
    has_many :following, through: :active_relationships, source: :followed
    has_many :followers, through: :passive_relationships, source: :follower
        
end
