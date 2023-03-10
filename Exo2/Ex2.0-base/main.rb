require_relative "connection"
require_relative 'models'

# rollback anything done in the passed block
def rollback
  ActiveRecord::Base.transaction do
    yield if block_given?
    raise ActiveRecord::Rollback
  end
rescue ActiveRecord::Rollback
  # Do nothing!!!
end

#
# Main program
#

client = Client.first

order = client.orders.new

order.order_items.new(product: Product.first, quantity: 2)
order.order_items.new(product: Product.last, quantity: 4)
order.order_items.new(product: Product.last, quantity: 1, item_price: 99.0)

rollback do
  order.save!

  puts "Prix total de la commande: #{order.price}"
  order.order_items.each do |item|
    puts "Item, item_price: #{item.item_price}, quantity: #{item.quantity}, price: #{item.price}, product_price: #{item.product.price}"
  end
end
