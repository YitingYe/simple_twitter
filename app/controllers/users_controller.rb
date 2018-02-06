class UsersController < ApplicationController
  before_action :authenticate_user!

  def tweets
    @user = User.find(params[:id])
  end

end
