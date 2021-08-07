class AddColumnMenburIdToLikes < ActiveRecord::Migration[5.2]
  def change
    add_column :likes, :menbur_id, :integer
  end
end
