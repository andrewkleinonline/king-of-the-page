class CreateVotesTable < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|

      t.belongs_to :subject
      t.belongs_to :response

    end
  end
end
