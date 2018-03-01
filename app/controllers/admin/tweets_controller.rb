<<<<<<< HEAD
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

  private

  def tweet_params
    params.require(:tweet).permit(:description, :image)
  end
  
=======
class Admin::TweetsController < Admin::BaseController
  def index
  end

  def destroy
  end
>>>>>>> 3f687d8450c1b3408c06805c3dccba381bd73b72
end
