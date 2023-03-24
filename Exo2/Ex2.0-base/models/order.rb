class Order < ActiveRecord::Base
  has_many :order_items
  has_many :products, through: :order_items
  belongs_to :client

  validates :order_items, :client, presence: true
  validates_associated :order_items

  def self.most_expensive
    all.max_by(&:price)
  end

  def price
    order_items.sum {|item| item.price}
  end

  def to_s
    "La commande #{id} du #{created_at} au prix de #{price}"
  end
end