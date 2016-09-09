class AddImageColumnToPrompts < ActiveRecord::Migration[5.0]
  def up
    add_attachment :prompts, :image
  end
  def down
    remove_attachment :prompts, :image
  end
end
