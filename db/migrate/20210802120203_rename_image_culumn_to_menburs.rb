class RenameImageCulumnToMenburs < ActiveRecord::Migration[5.2]
  def change
    rename_column :menburs, :image, :profile_image
  end
end
