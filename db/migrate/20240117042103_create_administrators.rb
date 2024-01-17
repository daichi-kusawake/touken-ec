class CreateAdministrators < ActiveRecord::Migration[7.1]
  def change
    create_table :administrators do |t|
      t.integer :administrator_id
      t.string :email_address
      t.string :password
      t.timestamp :registration_at
      t.timestamp :updated_at

      t.timestamps
    end
  end
end
