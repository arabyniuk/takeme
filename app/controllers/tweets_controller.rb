class TweetsController < ApplicationController

  # before_action :move_to_index, except: :index
  before_action :move_to_index, except: [:index, :search]

  def index
  end

  def new
  end

  def create
    Tweet.create(place: tweet_params[:place], day: tweet_params[:day], message: tweet_params[:message], user_id: current_user.id)
    # Tweet.create(name: params[:name], place: params[:place], day: params[:day], message: params[:message])
  end

  def destroy
    tweet = Tweet.find(params[:id])
    if tweet.user_id == current_user.id
      tweet.destroy
    end
  end

  def edit
    @tweet = Tweet.find(params[:id])
  end

  def update
    tweet = Tweet.find(params[:id])
    if tweet.user_id == current_user.id
      tweet.update(tweet_params)
    end
  end

  def show
     @tweet = Tweet.find(params[:id])
     @comments = @tweet.comments.includes(:user).order("created_at DESC")
  end

  def timeline
    @tweets = Tweet.includes(:user).order("day").page(params[:page]).per(10)
    
  end

  def form_for
    @place = Place.new
  end
  

 def search
  # @tweets = Tweet.where('place LIKE(?)',"%#{params[:keyword]}%").limit(10)
  @tweets = Tweet.where('place LIKE(?)',"%#{params[:keyword]}%").order("day").page(params[:page]).per(5)
  @user = User.find_by(id: @user_id)
  

end

# def sendmail
#   @mail=NoticeMailer.sendmail_confirm(1).deliver
#   render text: "Success!"
# end


private
  def tweet_params
    params.permit(:place, :day, :message)
  end

def move_to_index
   redirect_to action: :index unless user_signed_in?
 end

end
