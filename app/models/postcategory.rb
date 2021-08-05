class Postcategory < ApplicationRecord
    validates :category_name, presence: true, length: {maximum: 15}

    belongs_to :nancyatterapp
end
