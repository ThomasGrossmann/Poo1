class Client < ActiveRecord::Base
  has_many :orders
  has_many :ordered_products, lambda { distinct }, through: :orders, source: :products

  validates :firstname, length: { minimum: 2 }
  validates :lastname, length: { minimum: 2 }

  def to_s
    "#{firstname} #{lastname}"
  end
end