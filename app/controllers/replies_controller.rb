class RepliesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:likes, :followings, :followers]

  def index
    @tweet = Tweet.find(params[:tweet_id])
    @reply = Reply.new
    @user = @tweet.user
    @tweets = @user.tweets
    @likes = @user.likes
    @followings = @user.followings
    @followers = @user.followers
  end

  def create
    @tweet = Tweet.find(params[:tweet_id])
    @reply = @tweet.replies.build(reply_params)
    @reply.user = current_user
    @reply.save!
    redirect_to tweet_replies_path(@tweet)
  end

  def likes
    @likes = @user.likes
  end

  def followings
    @followings = @user.followings
  end

  def followers
    @followers = @user.followers
  end

  private

  def reply_params
    params.require(:reply).permit(:comment)
  end

  def set_user
    @user = User.find(params[:id])
  end

end
