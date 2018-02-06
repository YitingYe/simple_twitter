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

  def like
    @tweet = Tweet.find(params[:id])
    @tweet.likes.create!(user: current_user)
    redirect_back(fallback_location: root_path)
  end

  def unlike
    @tweet = Tweet.find(params[:id])
    likes = Like.where(tweet: @tweet, user: current_user)
    likes.destroy_all
    redirect_back(fallback_location: root_path)
  end

  def is_liked?(user)
    self.liked_users.include?(user)
  end

  private

  def tweet_params
    params.require(:tweet).permit(:description)
  end
  
end
