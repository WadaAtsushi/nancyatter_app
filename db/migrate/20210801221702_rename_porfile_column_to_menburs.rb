class RenamePorfileColumnToMenburs < ActiveRecord::Migration[5.2]
  def change
    rename_column :menburs, :porfile, :profile
  end
end
