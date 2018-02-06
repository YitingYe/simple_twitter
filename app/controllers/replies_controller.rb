class RepliesController < ApplicationController
  before_action :authenticate_user!

  def index
    @tweet = Tweet.find(params[:tweet_id])
    @reply = Reply.new
    @user = @tweet.user
  end

  def create
    @tweet = Tweet.find(params[:tweet_id])
    @reply = @tweet.replies.build(reply_params)
    @reply.user = current_user
    @reply.save!
    redirect_to tweet_replies_path(@tweet)
  end

  def reply_params
    params.require(:reply).permit(:comment)
  end

end