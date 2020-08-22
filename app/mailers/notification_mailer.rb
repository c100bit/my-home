class NotificationMailer < ApplicationMailer

  def email
    @message = params[:message]
    @user = params[:user]

    mail(to: @user.email, subject: 'Уведомление')
  end

end
