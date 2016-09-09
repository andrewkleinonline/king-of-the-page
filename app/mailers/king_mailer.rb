class KingMailer < ApplicationMailer
  default from: 'king.of.the.page@flatironschool.com'

  def king_email(user)
    @user = user
    mail(to: @user.email, subject: 'You are now the king!')
  end

end
