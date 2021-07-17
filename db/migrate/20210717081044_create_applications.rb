class CreateApplications < ActiveRecord::Migration[5.2]
  def change
    create_table :applications do |t|
      t.string :app_name
      t.integer :admin_id
      t.integer :user_id

      t.timestamps
    end
  end
end
