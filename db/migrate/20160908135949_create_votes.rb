class CreateVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|
      t.belongs_to :response
      t.belongs_to :subject
    end
  end
end
