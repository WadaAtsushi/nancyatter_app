class AddColumnNancyatterappIdToAppcategories < ActiveRecord::Migration[5.2]
  def change
    add_column :appcategories, :nancyatterapp_id, :integer
  end
end
