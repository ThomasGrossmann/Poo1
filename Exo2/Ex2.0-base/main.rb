require_relative 'connection'
require_relative 'models'

order = Order.last

puts order.total