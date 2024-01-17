class CreateJapaneseSwords < ActiveRecord::Migration[7.1]
  def change
    create_table :japanese_swords do |t|
      t.references :japanese_sword_category, null: false, foreign_key: true
      t.float :blade_length
      t.float :curvature
      t.float :width_at_the_hamachi
      t.float :thickness_at_the_moto_kasane
      t.float :wide_at_the_kissaki
      t.float :thickness_at_the_saki_kasane
      t.float :weight
      t.string :nakago
      t.string :guns_sword_registration_area
      t.integer :guns_sword_registration_number

      t.timestamps
    end
  end
end
