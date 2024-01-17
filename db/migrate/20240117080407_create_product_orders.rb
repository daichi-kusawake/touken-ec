class CreateProductOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :product_orders do |t|
      t.references :product, null: false, foreign_key: true
      t.references :order, null: false, foreign_key: true
      t.string :tax_included_price
      t.integer :order_status


      t.timestamps
    end
  end
end
