class CreateCustomers < ActiveRecord::Migration[7.1]
  def change
    create_table :customers do |t|
      t.string :family_name
      t.string :last_name
      t.string :family_name_furigana
      t.string :last_name_furigana
      t.string :email_address
      t.string :password


      t.timestamps
    end
  end
end
