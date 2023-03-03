require_relative 'connection'
require_relative 'models'

client = Client.first

# Version directe
puts client.ordered_products.cheap

# Version avec détails  
puts "### Produits pas cher commandé par #{client}"
client.ordered_products.cheap.each do |product|
  puts "  #{product.name} trouvé dans #{product.orders.count} commandes"
end

puts "### Produits commandé par 50 pièces ou plus"
products_ordered_by_50_or_more = OrderItem.bulk(50).map(&:product)
puts products_ordered_by_50_or_more



order = client.orders.new(status: "Pending")
order.order_items.new(product: Product.first, quantity: 1)
puts order.save