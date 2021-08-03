class RenameAppIdColumnToPostcategories < ActiveRecord::Migration[5.2]
  def change
    rename_column :postcategories, :app_id, :nancyatterapp_id
  end
end
