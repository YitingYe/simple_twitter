class UsersController < ApplicationController
  before_action :authenticate_user!

  def edit
    @user = User.find(params[:id])
  end

  def tweets
    @user = User.find(params[:id])
    @tweets = @user.tweets
  end

end
