# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

Store.CartController = ->
  @cart = []
  @quantity = {}

  @loadCart = ->
    $.get(
      '/users/1/cart',
      cartController.handleLoadCart
    )

  @handleLoadCart = (products) =>
    @addToCart(product) for product in products
    @renderCart(products)

  @handleAddToCart = (e) =>
    # find the product that they added
    # @addToCart(product)

  @addToCart = (product) ->
    if @inCart(product)
      @quantity[product.id] += 1
    else
      @cart.push(product)
      @quantity[product.id] = 1

  @inCart = (product) ->
    _.find(@cart, (p) -> p.id == product.id)

  @renderCart = (products) ->
    for product in @cart
      $('#cart ul').append(
        $("<li>#{@quantity[product.id]} #{product.name}  $#{product.price / 100}</li>")
      )
    $('#cart ul').append($("<li>$#{@cartTotal() / 100}</li>"))
    

  @cartTotal = ->
    _.inject(@cart, (sum, product) =>
      sum += product.price * @quantity[product.id]
    , 0)

  this