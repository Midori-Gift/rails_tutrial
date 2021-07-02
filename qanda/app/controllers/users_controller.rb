class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def following
    @user = User.find(params[:id])
    @users = @user.following
    render 'users/following'
  end

  def followers
    @user = User.find(params[:id])
    @users = @user.followers
    render 'users/followers'
  end
end
