class AddImageColumnToResponses < ActiveRecord::Migration[5.0]
  def up
    add_attachment :responses, :image
  end
  def down
    remove_attachment :responses, :image
  end
end
