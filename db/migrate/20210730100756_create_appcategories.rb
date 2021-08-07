class CreateAppcategories < ActiveRecord::Migration[5.2]
  def change
    create_table :appcategories do |t|
      t.string :category_name
      t.integer :nancyatterapp_id

      t.timestamps
    end
  end
end
