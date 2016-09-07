class User < ApplicationRecord
  has_many :decrees, :foreign_key => 'king_id', :class_name => "Prompt"
  # has_many :responses, :foreign_key => 'king_id', through: :prompts
  has_many :responses, :foreign_key => 'subject_id'
  has_many :prompts, :foreign_key => 'subject_id', through: :responses
  has_many :votes, :foreign_key => 'subject_id'

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
