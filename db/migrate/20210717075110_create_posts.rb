class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :content
      t.integer :user_id
      t.integer :app_id
      t.integer :category_id
      t.string :image
      t.integer :menbur_id

      t.timestamps
    end
  end
end
