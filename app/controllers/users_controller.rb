class UsersController < ApplicationController
  def show

    user = User.find(params[:id])
    @user = User.find(params[:id])
    @first_name = user.first_name
    @last_name = user.last_name
    @id = user.id


    @tweets = user.tweets.page(params[:page]).per(5).order("day")

     @birthday  = user.birthday
     date_format = "%Y%m%d"
     birthday = @birthday.to_date
     puts "何日？"
     puts Date.today.strftime(date_format).to_i
     puts birthday.strftime(date_format).to_i
     @age  = ((Date.today.strftime(date_format).to_i) -(birthday.strftime(date_format).to_i)) / 10000

  end

  def edit
  end

  def update
     current_user.update(update_params)
  end

  def select
     @user = User.new(sex: 'male')

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
    params.require(:user).permit(:first_name, :last_name, :sex, :birthday, :image, :language1, :language2, :fb, :place)
end
end



