require_relative 'connection'
require_relative 'models'

ActiveRecord::Base.connection.execute("SELECT 1")

supplier1 = Supplier.create(name: "Supplier 1")
supplier2 = Supplier.create(name: "Supplier 2")

category1 = Category.create(name: "Category 1", description: "Description 1")
category2 = Category.create(name: "Category 2", description: "Description 2")
category3 = Category.create(name: "Category 3", description: "Description 3")

product1 = Product.create(name: "Product 1", price: 1.00, description: "Description 1", category: category1, supplier: supplier1)
product2 = Product.create(name: "Product 2", price: 2.00, description: "Description 2", category: category2, supplier: supplier2)
product3 = Product.create(name: "Product 3", price: 3.00, description: "Description 3", category: category2, supplier: supplier1)
product4 = Product.create(name: "Product 4", price: 1.00, description: "Description 4", category: category1, supplier: supplier2)
product5 = Product.create(name: "Product 5", price: 2.00, description: "Description 5", category: category2, supplier: supplier1)
product6 = Product.create(name: "Product 6", price: 3.00, description: "Description 6", category: category2, supplier: supplier2)

client1 = Client.create(firstname: "Benoit", lastname: "Caillouhumbert", type: "Individual")
client2 = Client.create(firstname: "Louis", lastname: "Sapin", type: "Individual")
company1  = Client.create(type: "Company", name: "Company 1")
company2 = Client.create(type: "Company", name: "Company 2")
company3 = Client.create(type: "Company", name: "Company 3")

order1 = client1.orders.new(status: "pending")
order2 = company1.orders.new(status: "sent")
order3 = company3.orders.new(status: "sent")
order3 = company3.orders.new(status: "pending")
order4 = client2.orders.new(status: "pending")

order1.order_items.new(quantity: 1, item_price: product1.price, product: product1)
order2.order_items.new(quantity: 1, item_price: product2.price, product: product2)
order3.order_items.new(quantity: 1, item_price: product3.price, product: product3)
order4.order_items.new(quantity: 1, item_price: product3.price, product: product3)
order4.order_items.new(quantity: 1, item_price: product2.price, product: product2)
order4.order_items.new(quantity: 1, item_price: product1.price, product: product1)
order1.save()
order2.save()
order3.save()
order4.save()