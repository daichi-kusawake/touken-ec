class RemoveDescriptionFromProducts < ActiveRecord::Migration[7.1]
  def change
    remove_column :products, :description, :string
  end
end
