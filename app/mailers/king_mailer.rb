class KingMailer < ApplicationMailer
  default from: 'king.of.the.page@flatironschool.com'

  def king_email(user)
    @user = user
    mail(to: @user.email, subject: 'You are now the king!')
  end

  def decree_review_email(decree)
    User.where(admin: true).each do |user|
      mail(to: user.email, subject: 'New decree for review')
    end
  end
end
