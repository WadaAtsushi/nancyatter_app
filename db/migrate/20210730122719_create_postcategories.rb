class CreatePostcategories < ActiveRecord::Migration[5.2]
  def change
    create_table :postcategories do |t|
      t.integer :app_id
      t.string :category_name

      t.timestamps
    end
  end
end
