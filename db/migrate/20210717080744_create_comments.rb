class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :post_id
      t.integer :menbur_id
      t.string :comment_text

      t.timestamps
    end
  end
end
