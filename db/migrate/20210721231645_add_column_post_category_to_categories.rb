class AddColumnPostCategoryToCategories < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :post_category, :string
  end
end
