class RenameCommentsUserIdToMenburId < ActiveRecord::Migration[5.2]
  def change
    rename_column :comments, :user_id, :menbure_id
  end
end
