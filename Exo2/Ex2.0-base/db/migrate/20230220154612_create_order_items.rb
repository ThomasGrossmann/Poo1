class CreateOrderItems < ActiveRecord::Migration[6.1]
  def change
    create_table :order_items do |t|
      t.integer :quantity
      t.decimal :item_price, scale: 2, precision: 10
      
      t.references :order, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
    end
  end
end
