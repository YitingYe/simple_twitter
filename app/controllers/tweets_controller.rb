class TweetsController < ApplicationController
  before_action :authenticate_user!

  def index
    @tweets = Tweet.all
    @tweet = Tweet.new
    @users = User.all
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)
    @tweet.user = current_user
    if @tweet.save
      flash[:notice] = "Tweet was successfully created"
      redirect_to tweets_path
    else
      flash.now["alert"] = "Tweet was failed to create"
      render :new
    end
  end

  private

  def tweet_params
    params.require(:tweet).permit(:description)
  end
  
end
