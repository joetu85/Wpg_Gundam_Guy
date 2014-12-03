class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :product_name
      t.string :image
      t.string :price
      t.integer :quantity

      t.timestamps
    end
  end
end
