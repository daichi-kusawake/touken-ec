class CreateAdministrators < ActiveRecord::Migration[7.1]
  def change
    create_table :administrators do |t|
      t.string :email_address
      t.string :password_digest

      t.timestamps
    end
  end
end
