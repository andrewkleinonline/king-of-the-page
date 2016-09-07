class CreateResponses < ActiveRecord::Migration[5.0]
  def change
    create_table :responses do |t|
      t.belongs_to :subject
      t.belongs_to :prompt
      t.string :content
    end
  end
end
