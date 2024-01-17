class CreateDeliveryDestinations < ActiveRecord::Migration[7.1]
  def change
    create_table :delivery_destinations do |t|
      t.references :custumer, null: false, foreign_key: true
      t.string :addressee
      t.string :delivery_postal_code
      t.string :delivery_address
      t.timestamp :registration_at
      t.timestamp :updated_at

      t.timestamps
    end
  end
end
