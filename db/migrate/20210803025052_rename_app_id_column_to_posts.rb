class RenameAppIdColumnToPosts < ActiveRecord::Migration[5.2]
  def change
    rename_column :posts, :app_id, :nancyatterapp_id
  end
end
