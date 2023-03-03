class CreateOrdersItems < ActiveRecord::Migration[6.1]
  def change
    create_table :orders_items do |t|
      t.integer :quantity
      t.integer :item_price
    end
  end
end
