class AddCurrentColumnToPrompts < ActiveRecord::Migration[5.0]
  def change

    add_column :prompts, :current, :boolean, default: false
  end
end
