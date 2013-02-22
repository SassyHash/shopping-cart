class Cart < ActiveRecord::Base
  attr_accessible :user_id
  belongs_to :user
  has_many :cart_products
  has_many :products, :through => :cart_products

  def add_product(product)
    cart_products.create(:cart_id => self.id, :product_id => product.id)
  end
end
