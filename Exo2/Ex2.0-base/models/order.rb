class Order < ActiveRecord::Base
  belongs_to :client
  has_many :order_items
  has_many :products, through: :order_items

  validates :status, presence: true

  def to_s
    "La commande #{id} du #{created_at}"
  end
end