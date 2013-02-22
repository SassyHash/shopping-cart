class CartsController < ApplicationController
  def show
    @user = User.find(params[:user_id])
    @cart = @user.products
    render :json => @cart
  end
end
