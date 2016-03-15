class NoticeMailer <  ActionMailer::Base

  default from: 'tatsuya.takemura@gmail.com'


  def sendmail_confirm(user)

    @user = User.find(user)

    mail(to: @user.email , subject: 'Thanks')
  end
end
