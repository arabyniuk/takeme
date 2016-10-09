class UsersController < ApplicationController
  def show

    user = User.find(params[:id])
    @user = User.find(params[:id])
    @first_name = user.first_name
    @last_name = user.last_name
    @id = user.id
    @tweets = user.tweets.page(params[:page]).per(5).order("day")
  end

  def edit
  end

  def update
     current_user.update(update_params)
  end


 # def messages

 #   @message = Message.create(message: params[:message], user_id: params[:user_id])

 #   user = User.find(params[:user_id])

 #   puts 'MessageIDは'
 #   puts @user.id

 #   redirect_to "/users/#{@message.user.id}"

 # end


private
  def update_params
    params.require(:user).permit(:first_name, :last_name, :image, :language1, :language2, :fb, :place)
  end



end


