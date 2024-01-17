class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :product_name
      t.integer :tax_excluded_price
      t.string :description
      t.references :article_category, null: false, foreign_key: true
      t.integer :article_id
      t.references :appraisal_document, null: false, foreign_key: true
      t.references :country, null: false, foreign_key: true
      t.references :era, null: false, foreign_key: true
      t.references :sign, null: false, foreign_key: true
      t.references :japanese_sword, null: false, foreign_key: true
      t.integer :sales_status

      t.timestamps
    end
  end
end
