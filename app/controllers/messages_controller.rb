class MessagesController < ApplicationController

  def index
    @user = User.find(params[:user_id])
  end

  def create
    @message = Message.create(message: params[:message], user_id: params[:user_id])

    user = User.find(params[:user_id])

    redirect_to "/users/#{@message.user_id}/messages"


    #メールのメッセージ（後で考える）
    #NoticeMailer.sendmail_confirm(@comment.tweet.id,tweet.user_id,current_user.id).deliver
  end

  private

  def comment_params
    params.permit(:message, :user_id)
  end
end
