class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :family_name,null: false
      t.string :last_name,null: false
      t.string :family_name_furigana,null: false
      t.string :last_name_furigana,null: false
      t.string :email_address,null: false
      t.string :password_digest,null: false
      t.string :postal_code, null: false
      t.string :address, null: false
      t.boolean :account_status,null: false, default: 1 #アカウントステータスを1をデフォルトとして、退会済みの場合は0に変更する
      t.timestamps
    end
  end
end
