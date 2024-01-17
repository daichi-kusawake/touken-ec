class CreateKattyuCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :kattyu_categories do |t|
      t.string :kattyu_category_name

      t.timestamps
    end
  end
end
