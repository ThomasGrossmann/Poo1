class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.decimal :price, scale: 2, precision: 10
      
      t.references :category, null: false, foreign_key: true
    end
  end
end
