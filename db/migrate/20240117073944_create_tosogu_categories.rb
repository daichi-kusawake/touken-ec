class CreateTosoguCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :tosogu_categories do |t|
      t.string :tosogu_category_name

      t.timestamps
    end
  end
end
