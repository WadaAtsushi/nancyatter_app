class ChangeDataPostIdToLikes < ActiveRecord::Migration[5.2]
  def change
    change_column :likes, :post_id, :integer
  end
end
