class Product < ActiveRecord::Base
  belongs_to :category
  has_many :order_items
  has_many :orders, through: :order_items

  scope :cheap, -> { where("products.price <= ?", 0.2) }
end