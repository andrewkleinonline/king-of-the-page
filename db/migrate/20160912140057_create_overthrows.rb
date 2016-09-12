class CreateOverthrows < ActiveRecord::Migration[5.0]
  def change
    create_table :overthrows do |t|
      t.belongs_to :subject
      t.belongs_to :prompt
    end
  end
end
