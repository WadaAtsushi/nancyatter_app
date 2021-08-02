class Post < ApplicationRecord
    validates :title, presence: true, length: {maximum: 40}
    validates :content, presence: true, length: {maximum: 300}
    validates :user_id, presence: true
    validates :post_image, presence: true
    
    mount_uploader :post_image, PostImageUploader

    belongs_to :user
    has_many :categorys
    
end
