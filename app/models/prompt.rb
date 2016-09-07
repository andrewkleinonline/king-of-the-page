class Prompt < ApplicationRecord
  belongs_to :king, :class_name => "User"
  has_many :responses
end
