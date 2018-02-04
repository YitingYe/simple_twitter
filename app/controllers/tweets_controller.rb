class TweetsController < ApplicationController
  before_action :authenticate_user!

  def index
    @tweets = Tweet.all
    @user_name = current_user.name
  end
  
end
