class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:edit, :update, :tweets, :likes, :followings, :followers]

  def edit
    unless @user == current_user
      redirect_to tweets_user_path(@user)    
    end   
  end

  def update
    @user.update(user_params)
    redirect_to tweets_user_path(@user)
  end

  def tweets
    @tweets = @user.tweets
    @likes = @user.likes
    @followings = @user.followings
    @followers = @user.followers
  end

  def following?(user)
    self.followings.include?(@user)
  end

  def likes
    @tweets = @user.tweets
    @likes = @user.likes
    @followings = @user.followings
    @followers = @user.followers
  end

  def followings
    @followings = @user.followings
  end

  def followers
    @followers = @user.followers
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :introduction, :avatar)
  end

end
