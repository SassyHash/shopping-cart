class CartProductsController < ApplicationController
  def create
    product = Product.find(params[:product_id])
    User.first.add_to_cart(product)
    render :json => product
  end
end
