class Nancyatterapp < ApplicationRecord
    validates :app_image, presence: true

    mount_uploader :app_image, AppImageUploader

    belongs_to :user
    has_many :menburs
    belongs_to :appcategory
    has_many :postcategories
    
end
