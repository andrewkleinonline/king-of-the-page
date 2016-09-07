class Prompt < ApplicationRecord
  belongs_to :king, :class_name => "User"
  has_many :responses
  has_many :subjects, through: :responses, :class_name => "User"
end
