class AddDescriptionToMiniCapstone < ActiveRecord::Migration[5.1]
  def change
    change_column :products, :description, :text
    change_column :products, :price, "numeric USING CAST(price AS numeric)", precision: 5, scale: 2
  end
end
