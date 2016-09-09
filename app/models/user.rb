class User < ApplicationRecord
  has_many :decrees, :foreign_key => 'king_id', :class_name => "Prompt"
  # has_many :responses, :foreign_key => 'king_id', through: :prompts
  has_many :responses, :foreign_key => 'subject_id'
  has_many :votes, :foreign_key => 'subject_id'
  has_many :prompts, :foreign_key => 'subject_id', through: :responses
  #has_secure_password
  #has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  #validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def self.create_from_omniauth(auth)
    user = self.find_or_create_by(facebook_user_id: auth[:uid])
    user.first_name = auth[:info][:first_name]
    user.last_name = auth[:info][:last_name]
    user.email = auth[:info][:email]
    user.profile_picture_url = auth[:info][:image]
    user.save
  end

  def self.current_king
    self.find_by(king: true)
  end

  def make_king
    current_king = User.current_king
    current_king.update(king: false) if current_king
    self.update(king: true)
    mail_new_king
  end

  def mail_new_king
    KingMailer.king_email(self).deliver
  end
end
