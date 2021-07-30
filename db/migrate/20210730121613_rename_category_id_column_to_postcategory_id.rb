class RenameCategoryIdColumnToPostcategoryId < ActiveRecord::Migration[5.2]
  def change
    rename_column :posts, :category_id, :postcategory_id
  end
end
