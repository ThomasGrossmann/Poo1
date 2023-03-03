class OrderItem < ActiveRecord::Base
  belongs_to :product
  belongs_to :order

  scope :bulk, -> (size = 100) { where("quantity >= ?", size) }
end