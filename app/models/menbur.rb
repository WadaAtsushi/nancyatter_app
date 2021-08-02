class Menbur < ApplicationRecord
    validates :profile_image, presence: true

    mount_uploader :profile_image, ProfileImageUploader
    
    belongs_to :nancyatterapp
    belongs_to :user
end
