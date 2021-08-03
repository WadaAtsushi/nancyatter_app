class Nancyatterapp < ApplicationRecord
    validates :app_image, presence: true

    mount_uploader :app_image, AppImageUploader

    belongs_to :user
    has_many :menburs
    has_many :appcategories
    
end
