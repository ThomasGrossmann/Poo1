class Category < ActiveRecord::Base
  has_many :products
  has_many :suppliers, through: :products
  has_many :orders, through: :products

  validates :name, length: { minimum: 2, maximum: 50 }

  def self.unordered
    all.reject {|category| category.orders.any?}
  end

  def to_s
    name
  end
end