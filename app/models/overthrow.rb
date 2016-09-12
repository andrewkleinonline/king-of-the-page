class Overthrow < ApplicationRecord
  belongs_to :subject, :class_name => "User"
  belongs_to :prompt

end
