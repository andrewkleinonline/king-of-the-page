class Response < ApplicationRecord
  belongs_to :prompt
  belongs_to :subject, :class_name => "User"
  has_many :votes
end
