class RepliesController < ApplicationController
  before_action :authenticate_user!

  def index
    @tweet = Tweet.find(params[:tweet_id])
  end
end
