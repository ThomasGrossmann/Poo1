class Order < ActiveRecord::Base
  has_many :order_items
  has_many :products, through: :order_items
  belongs_to :client

  validates :order_items, :client, presence: true
  validates_associated :order_items

  # Déterminer s'il y a des commandes entre deux dates données
  def self.between?(start_date, end_date)
    where(created_at: start_date..end_date).any?
  end

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