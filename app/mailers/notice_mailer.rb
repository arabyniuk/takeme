class NoticeMailer <  ApplicationMailer

  def sendmail_confirm(user)

    @user = user

   puts @user

    mail to:       user.id,
         subject: 'こんにちは'
  end
end
