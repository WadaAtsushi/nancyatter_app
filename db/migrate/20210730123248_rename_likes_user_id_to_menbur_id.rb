class RenameLikesUserIdToMenburId < ActiveRecord::Migration[5.2]
  def change
    rename_column :likes, :user_id, :menbure_id
  end
end
