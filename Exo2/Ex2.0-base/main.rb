require_relative "connection"
require_relative 'models'

#
# Main program
#


# clients that have no orders
puts "Clients that have no orders:"
Client.delete_without_orders.each do |client|
  puts client
  client.destroy
end