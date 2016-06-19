class NoticeMailer <  ApplicationMailer

  def sendmail_confirm(tweet_id,user_id,current_id)

    # @user = user

  @tweet_id = tweet_id

   puts 'IDは'
   puts user_id
   @user = User.find_by(id: user_id)
   puts @user.email

   
   puts 'Current IDは'
   puts current_id 
   @current = User.find_by(id: current_id)
  puts @current.name


    mail to: @user.email,
         subject: '[Brali]新しいメッセージが届いています'
  end
end
