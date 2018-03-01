class UsersController < ApplicationController
<<<<<<< HEAD
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
    @tweets = @user.tweets
    @likes = @user.likes
    @followings = @user.followings
    @followers = @user.followers
  end

  def followers
    @tweets = @user.tweets
    @likes = @user.likes
    @followings = @user.followings
    @followers = @user.followers
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :introduction, :avatar)
=======

  def tweets
  end

  def edit
  end

  def update
  end

  def followings
    @followings # 基於測試規格，必須講定變數名稱
  end

  def followers
    @followers # 基於測試規格，必須講定變數名稱
  end

  def likes
    @likes # 基於測試規格，必須講定變數名稱
>>>>>>> 3f687d8450c1b3408c06805c3dccba381bd73b72
  end

end
