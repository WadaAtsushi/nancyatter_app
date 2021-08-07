class RemoveLikesMenburId < ActiveRecord::Migration[5.2]
  def change
    remove_column :likes, :menbur_id, :string
  end
end
