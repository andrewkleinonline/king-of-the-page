class Prompt < ApplicationRecord
  belongs_to :king, :class_name => "User"
  has_many :responses
  has_many :subjects, through: :responses, :class_name => "User"
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: ""
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  def self.current
    self.find_by(current: true)
  end

  def set_current
    current_prompt = Prompt.current
    current_prompt.update(current: false) if current_prompt
    self.update(current: true)
  end

  def approve_prompt
    self.set_current
    self.update(pending: false)
  end


end


# pmt.set_current
#
# pmt.approve
#   set_current
#   sets it not pending
# end
