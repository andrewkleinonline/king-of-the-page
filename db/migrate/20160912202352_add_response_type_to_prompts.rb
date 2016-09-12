class AddResponseTypeToPrompts < ActiveRecord::Migration[5.0]
  def change
    add_column :prompts, :response_type, :string, default: "text"
  end
end
