class CreateJapaneseSwordCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :japanese_sword_categories do |t|
      t.string :japanese_sword_category_name

      t.timestamps
    end
  end
end
