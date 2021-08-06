class Postcategory < ApplicationRecord
    validates :category_name, presence: true, length: {maximum: 15}

    has_many :posts
    belongs_to :nancyatterapp
end
