require_relative "connection"
require_relative 'models'

#
# Main program
#


# display the more expensive order
puts "The more expensive order is :"
puts Order.most_expensive