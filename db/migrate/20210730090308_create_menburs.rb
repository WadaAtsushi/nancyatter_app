class CreateMenburs < ActiveRecord::Migration[5.2]
  def change
    create_table :menburs do |t|
      t.integer :nancyatterapp_id
      t.integer :user_id
      t.string :nickname
      t.string :profile_image
      t.string :porfile
      t.integer :del_fag

      t.timestamps
    end
  end
end