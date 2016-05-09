class NoticeMailer <  ApplicationMailer

  def sendmail_confirm(user)

    @user = user

   puts @user

    mail to: @comment.user_id
    # user.id,
         subject: 'こんにちは'
  end
end
