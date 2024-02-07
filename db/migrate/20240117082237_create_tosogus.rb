class CreateTosogus < ActiveRecord::Migration[7.1]
  def change
    create_table :tosogus do |t|
      t.string :shape
      t.boolean :in_paulownia_wood_box
      t.float :length
      t.float :width
      t.float :thickness
      t.float :weight

      t.timestamps
    end
  end
end
