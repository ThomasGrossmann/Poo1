require_relative 'connection'
require_relative 'models'

ActiveRecord::Base.connection.execute("SELECT 1")

category1 = Category.create(name: "Category 1", description: "Description 1")
category2 = Category.create(name: "Category 2", description: "Description 2")
category3 = Category.create(name: "Category 3", description: "Description 3")

product1 = category1.products.create(name: "Product 1", description: "Description 1", price: 1.00)
product2 = category1.products.create(name: "Product 2", description: "Description 2", price: 2.00)
product3 = category2.products.create(name: "Product 3", description: "Description 3", price: 3.00)
product4 = category2.products.create(name: "Product 4", description: "Description 4", price: 1.00)
product5 = category3.products.create(name: "Product 5", description: "Description 5", price: 2.00)
product6 = category3.products.create(name: "Product 6", description: "Description 6", price: 3.00)

client1 = Client.create(firstname: "Benoit", lastname: "Caillouhumbert")
client2 = Client.create(firstname: "Louis", lastname: "Sapin")
client3 = Client.create(firstname: "François", lastname: "Hollande")

order1 = client1.orders.create(status: "pending")
order2 = client1.orders.create(status: "sent")
order3 = client2.orders.create(status: "pending")
order4 = client3.orders.create(status: "sent")

order1.order_items.create(product: product1, quantity: 1, item_price: product1.price)
order2.order_items.create(product: product2, quantity: 1, item_price: product2.price)
order3.order_items.create(product: product3, quantity: 1, item_price: product3.price)
order4.order_items.create(product: product4, quantity: 1, item_price: product4.price)
order4.order_items.create(product: product5, quantity: 1, item_price: product5.price)
order4.order_items.create(product: product6, quantity: 1, item_price: product6.price)

