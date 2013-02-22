class CartsController < ApplicationController
  def show
    @user = User.find(params[:user_id])
    @cart = @user.products

    cart_json_object = {}

    @cart.each do |product|
      if cart_json_object[product]
        cart_json_object[product][:quantity] += 1
      else
        cart_json_object[product] = {}
        cart_json_object[product][:label] = product.name
        cart_json_object[product][:price] = product.price.to_f/100
        cart_json_object[product][:quantity] = 1
      end
    end

    render :json => cart_json_object
  end
end
