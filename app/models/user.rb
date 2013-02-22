class User < ActiveRecord::Base
  attr_accessible :user_name


  has_one :cart
  has_many :products, :through => :cart

  def add_to_cart(product)
    cart.add_product(product)
  end

end
