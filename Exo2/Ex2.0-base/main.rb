require_relative 'connection'
require_relative 'models'

ActiveRecord::Base.connection.execute("SELECT 1")

category1 = Category.create(name: "Category 1", description: "Description 1")
category2 = Category.create(name: "Category 2", description: "Description 2")
category3 = Category.create(name: "Category 3", description: "Description 3")

product1 = Product.create(name: "Product 1", description: "Description 1", price: 1.00, category: category1)
product2 = Product.create(name: "Product 2", description: "Description 2", price: 2.00, category: category2)
product3 = Product.create(name: "Product 3", description: "Description 3", price: 3.00, category: category3)
product4 = Product.create(name: "Product 4", description: "Description 4", price: 1.00, category: category1)
product5 = Product.create(name: "Product 5", description: "Description 5", price: 2.00, category: category2)
product6 = Product.create(name: "Product 6", description: "Description 6", price: 3.00, category: category3)

client1 = Client.create(firstname: "Benoit", lastname: "Caillouhumbert")
client2 = Client.create(firstname: "Louis", lastname: "Sapin")
client3 = Client.create(firstname: "François", lastname: "Hollande")

order1 = Order.create(client: client1)
order2 = Order.create(client: client2)
order3 = Order.create(client: client3)

order_item1 = OrderItem.create(quantity: 1)
order_item2 = OrderItem.create(quantity: 2)
order_item3 = OrderItem.create(quantity: 3)
order_item4 = OrderItem.create(quantity: 4)