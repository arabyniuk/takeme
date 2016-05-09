class CommentsController < ApplicationController
  def create
    @comment = Comment.create(message: params[:message], tweet_id: params[:tweet_id], user_id: current_user.id)

    
    redirect_to "/tweets/#{@comment.tweet.id}"

    #NoticeMailer.sendmail_confirm(current_user.id).deliver
    NoticeMailer.sendmail_confirm(@comment.user_id).deliver
   end


  private
  def comment_params
    params.permit(:message, :tweet_id)
  end
end
