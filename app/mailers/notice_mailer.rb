class NoticeMailer <  ApplicationMailer

  def sendmail_confirm(user)

    @user = user

   puts @user

    mail to:       user.email,
         subject: 'こんにちは'
  end
end
