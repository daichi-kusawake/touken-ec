class CreateEras < ActiveRecord::Migration[7.1]
  def change
    create_table :eras do |t|
      t.string :era
      t.string :era_name
      t.date :ad

      t.timestamps
    end
  end
end
