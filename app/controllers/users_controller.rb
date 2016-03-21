class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @user = User.find(params[:id])
    @name = user.name
    @id = user.id
    @tweets = user.tweets.page(params[:page]).per(5).order("created_at DESC")
  end

  def edit
  end

  def update
     current_user.update(update_params)
  end

private
  def update_params
    params.require(:user).permit(:name, :avatar, :fb, :place)
  end

end


