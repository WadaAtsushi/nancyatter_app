class AddColumnMenburIdToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :menbur_id, :integer
  end
end
