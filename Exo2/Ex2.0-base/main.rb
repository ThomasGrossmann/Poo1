require_relative "connection"
require_relative 'models'

#
# Main program
#


start_date = Date.new(2023, 1, 1)
end_date = Date.new(2023, 12, 31)

puts "Y a-t-il des commandes entre le #{start_date} et le #{end_date} ?"
if Order.between?(start_date, end_date)
  puts "Oui"
else
  puts "Non"
end