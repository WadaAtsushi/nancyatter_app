class AddColumnMainTextToNancyatterapp < ActiveRecord::Migration[5.2]
  def change
    add_column :nancyatterapps, :main_text, :string
  end
end
