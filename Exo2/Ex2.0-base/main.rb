require_relative "connection"
require_relative 'models'

#
# Main program
#


# afficher les catégories qui ont des produits qui coutent plus de 100
puts "Categories with expensive products:"
Category.expensive.each do |category|
  puts category
end