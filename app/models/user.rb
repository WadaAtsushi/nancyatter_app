class User < ApplicationRecord
    has_secure_password

    validates :name, presence: true
    validates :email, presence: true
    validates :password, presence: true, uniqueness: true

    has_many :menburs
    has_many :posts
    has_many :comments
    has_many :nancyatterapps
end
