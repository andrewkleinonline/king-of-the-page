class CreatePrompts < ActiveRecord::Migration[5.0]
  def change
    create_table :prompts do |t|
      t.integer :user_id
      t.string :content
    end
  end
end
