class AddDelFlagToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :del_flag, :integer
  end
end
