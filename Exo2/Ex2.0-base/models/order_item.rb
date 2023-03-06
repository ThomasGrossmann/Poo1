class OrderItem < ActiveRecord::Base
  belongs_to :product
  belongs_to :order

  validates :product, presence: true
  validates :order, presence: true
  validates :quantity, numericality: { greater_than: 0, only_integer: true }

  def price
    quantity * item_price
  end

  scope :bulk, -> (size = 100) { where("quantity >= ?", size) }
end