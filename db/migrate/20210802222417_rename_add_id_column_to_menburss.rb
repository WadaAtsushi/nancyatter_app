class RenameAddIdColumnToMenburss < ActiveRecord::Migration[5.2]
  def change
    rename_column :menburs, :app_id, :nancyatterapp_id
  end
end
