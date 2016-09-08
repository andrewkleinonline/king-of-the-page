class CreatePrompts < ActiveRecord::Migration[5.0]
  def change
    create_table :prompts do |t|
      t.string :content
      t.belongs_to :king
      t.boolean :current, default: false
    end
  end
end
