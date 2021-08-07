class RemoveLikesPostId < ActiveRecord::Migration[5.2]
  def change
    remove_column :likes, :post_id, :string
  end
end
