require_relative "connection"
require_relative 'models'

#
# Main program
#


puts "Categories that have never been ordered:"
puts Category.unordered