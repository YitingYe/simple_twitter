class TweetsController < ApplicationController
<<<<<<< HEAD
  before_action :authenticate_user!

  def index
    @tweets = Tweet.all
    @tweet = Tweet.new
    @users = User.all
    @popular = User.order(followers_count: :desc).limit(10)
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
  
=======

  def index
    @users # 基於測試規格，必須講定變數名稱，請用此變數中存放關注人數 Top 10 的使用者資料
  end

  def create
  end

  def like
  end

  def unlike
  end

>>>>>>> 3f687d8450c1b3408c06805c3dccba381bd73b72
end
