class Supplier < ActiveRecord::Base
    has_many :products
    has_many :categories, -> { distinct }, through: :products

    validates :name, length: { minimum: 2, maximum: 50 }

    def to_s
        name
    end
end