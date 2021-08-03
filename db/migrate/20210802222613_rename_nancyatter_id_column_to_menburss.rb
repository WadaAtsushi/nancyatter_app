class RenameNancyatterIdColumnToMenburss < ActiveRecord::Migration[5.2]
  def change
    rename_column :menburs, :nancyatter_id, :nancyatterapp_id
  end
end
