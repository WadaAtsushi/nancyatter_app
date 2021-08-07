class RemoveMenbureIdToComments < ActiveRecord::Migration[5.2]
  def change
    remove_column :comments, :menbure_id, :integer
  end
end
