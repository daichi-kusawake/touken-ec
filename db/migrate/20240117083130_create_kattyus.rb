class CreateKattyus < ActiveRecord::Migration[7.1]
  def change
    create_table :kattyus do |t|
      t.string :odoshiito
      t.string :hachi
      t.boolean :kabutodai

      t.timestamps
    end
  end
end
