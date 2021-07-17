class ChangeDataPostIdComments < ActiveRecord::Migration[5.2]
  def change
    change_column :comments, :post_id, :integer
  end
end
