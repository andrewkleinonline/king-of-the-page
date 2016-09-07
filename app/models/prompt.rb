class Prompt < ApplicationRecord
  belongs_to :king, :class_name => "User"
  has_many :responses
  has_many :subjects, through: :responses, :class_name => "User"

  def self.current
    self.find_by(current: true)
  end

  def set_current
    current_prompt = Prompt.current
    current_prompt.update(current: false) if current_prompt
    self.update(current: true)
  end

end
