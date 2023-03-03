class OrderItem < ActiveRecord::Base
  belongs_to :product
  belongs_to :order

  validates :quantity, numericality: { greater_than: 0 }
  validates :product, presence: true

  scope :bulk, -> (size = 100) { where("quantity >= ?", size) }
end