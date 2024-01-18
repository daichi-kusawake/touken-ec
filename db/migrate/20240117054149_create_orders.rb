class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.references :customer, null: false, foreign_key: true
      t.string :addressee
      t.string :delivery_postal_code
      t.string :delivery_address
      t.string :payment_methods
      t.integer :billing_amount
      t.integer :shipping_fee
      t.integer :order_status

      t.timestamps
    end
  end
end
