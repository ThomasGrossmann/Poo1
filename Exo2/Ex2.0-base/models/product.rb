class Product < ActiveRecord::Base
  has_many :order_items
  has_many :orders, through: :order_items
  
  belongs_to :category
  belongs_to :supplier

  validates :category, :supplier, presence: true
  validates :name, length: { minimum: 2, maximum: 50 }
  validates :price, numericality: { greater_than: 0 }
  
  def to_s
    name
  end
end
