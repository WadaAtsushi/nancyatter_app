class AddColumnMenburIdToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :menbur_id, :integer
  end
end
