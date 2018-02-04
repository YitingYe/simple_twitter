class Admin::TweetsController < ApplicationController
  before_action :authenticate_user!
  before_action :authenticate_admin

  def index
    @tweets = Tweet.all
  end

  def destroy
    @tweet = Tweet.find(params[:id])
    @tweet.destroy
    redirect_to admin_tweets_path
    flash[:alert] = "TWEET WAS DELETED"
  end
  
end
