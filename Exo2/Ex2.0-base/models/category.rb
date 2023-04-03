class Category < ActiveRecord::Base
  has_many :products
  has_many :suppliers, through: :products
  has_many :orders, through: :products

  validates :name, length: { minimum: 2, maximum: 50 }

  def self.unordered
    all.reject {|category| category.orders.any?}
  end

  # afficher les catégories qui ont des produits qui coutent plus de 100
  def self.expensive
    all.select {|category| category.products.any? {|product| product.price > 100}}
  end

  def to_s
    name
  end
end