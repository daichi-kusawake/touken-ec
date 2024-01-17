class CreateAdministrators < ActiveRecord::Migration[7.1]
  def change
    create_table :administrators do |t|
      t.string :email_address
      t.string :password

      t.timestamps
    end
  end
end
