class AddTimestampsToPrompts < ActiveRecord::Migration[5.0]
  def change
    add_column :prompts, :created_at, :datetime
    add_column :prompts, :updated_at, :datetime
  end
end
