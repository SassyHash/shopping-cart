class SessionsController < ApplicationController
  def create
    @user = User.find_by_user_name(params[:user_name])
    if @user
      render 'user#show'
    end
  end

  def new
    @user = User.new
  end

  def destroy
  
  end

end
