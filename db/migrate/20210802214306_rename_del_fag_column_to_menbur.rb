class RenameDelFagColumnToMenbur < ActiveRecord::Migration[5.2]
  def change
    rename_column :menburs, :del_fag, :del_flag
  end
end
