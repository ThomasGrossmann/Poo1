require_relative "connection"
require_relative 'models'

#
# Main program
#


# display all the orders
orders = Order.all

# display the more expensive order
puts "The more expensive order is :"
puts orders.max_by(&:price)