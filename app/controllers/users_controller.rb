class UsersController < ApplicationController
  before_action :authenticate_user!

  def edit
    @user = User.find(params[:id])
    unless @user == current_user
      redirect_to tweets_user_path(@user)    
    end   
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to tweets_user_path(@user)
  end

  def tweets
    @user = User.find(params[:id])
    @tweets = @user.tweets
  end

  def following?(user)
    self.followings.include?(@user)
  end

  def likes
    @user = User.find(params[:id])
    @likes = @user.likes
  end

  private

  def user_params
    params.require(:user).permit(:name, :introduction, :avatar)
  end

end
