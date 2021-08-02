class RenameImageCulumnToNancyatterapps < ActiveRecord::Migration[5.2]
  def change
    rename_column :nancyatterapps, :image, :app_image
  end
end
