class CreateSigns < ActiveRecord::Migration[7.1]
  def change
    create_table :signs do |t|
      t.string :sign_person

      t.timestamps
    end
  end
end
