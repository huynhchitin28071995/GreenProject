# frozen_string_literal: true

class CartReflex < ApplicationReflex
  # Add Reflex methods in this file.
  #
  # All Reflex instances include CableReady::Broadcaster and expose the following properties:
  #
  #   - connection  - the ActionCable connection
  #   - channel     - the ActionCable channel
  #   - request     - an ActionDispatch::Request proxy for the socket connection
  #   - session     - the ActionDispatch::Session store for the current visitor
  #   - flash       - the ActionDispatch::Flash::FlashHash for the current request
  #   - url         - the URL of the page that triggered the reflex
  #   - params      - parameters from the element's closest form (if any)
  #   - element     - a Hash like object that represents the HTML element that triggered the reflex
  #     - signed    - use a signed Global ID to map dataset attribute to a model eg. element.signed[:foo]
  #     - unsigned  - use an unsigned Global ID to map dataset attribute to a model  eg. element.unsigned[:foo]
  #   - cable_ready - a special cable_ready that can broadcast to the current visitor (no brackets needed)
  #   - reflex_id   - a UUIDv4 that uniquely identies each Reflex
  #
  # Example:
  #
  #   before_reflex do
  #     # throw :abort # this will prevent the Reflex from continuing
  #     # learn more about callbacks at https://docs.stimulusreflex.com/lifecycle
  #   end
  #
  #   def example(argument=true)
  #     # Your logic here...
  #     # Any declared instance variables will be made available to the Rails controller and view.
  #   end
  #
  # Learn more at: https://docs.stimulusreflex.com/reflexes#reflex-classes

  delegate :current_user, to: :connection

  def add_to_cart(product_id)
    product = Product.find_by(id: product_id) 
    cart = current_user.cart
    item = cart.order_items.find_by(product_id: product_id)
    item.nil? ? add_item_to_cart(cart, product) : update_cart(item)
  end

  def destroy_item(product_id)
    cart = current_user.cart
    item = cart.order_items.find_by(id: product_id)
    item.destroy
  end

  def rem_item(product_id)
    cart = current_user.cart
    item = cart.order_items.find_by(id: product_id)
    item.update(quantity: item.quantity - 1 ) if item.quantity - 1 >= 0 
  end

  def add_item(product_id)
    cart = current_user.cart
    item = cart.order_items.find_by(id: product_id)
    item.update(quantity: item.quantity + 1 )
  end

  private
  def add_item_to_cart(cart, product)
    cart.order_items.create(product_id: product.id, price: product.price, quantity: 1)
  end

  def update_cart(item)
    item.update(quantity: item.quantity + 1 )
  end

end
