class AdminMailer < ApplicationMailer
  default from: 'king.of.the.page@flatironschool.com'

  def admin_email(user, prompt_id)
    @prompt_id = prompt_id
    @user = user
    mail(to: @user.email, subject: 'New decree for review')
  end
end
