class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.references :product_category, null: false, foreign_key: true
      t.references :japanese_sword, null: false, foreign_key: true
      t.references :tosogu, null: false, foreign_key: true
      t.references :kattyu, null: false, foreign_key: true
      t.string :product_name
      t.integer :tax_excluded_price
      t.string :description
      t.integer :article
      t.integer :appraisal_document
      t.integer :era
      t.integer :era_name
      t.integer :sign
      t.integer :sales_status

      t.timestamps
    end
  end
end
