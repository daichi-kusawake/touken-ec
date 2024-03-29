class CreateCustomers < ActiveRecord::Migration[7.1]
  def change
    create_table :customers do |t|
      t.string :family_name,null: false
      t.string :last_name,null: false
      t.string :family_name_furigana,null: false
      t.string :last_name_furigana,null: false
      t.string :email_address,null: false
      t.string :password_digest,null: false
      t.timestamps
    end
  end
end
