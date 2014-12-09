class RemoveProductFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :Product, :string
  end
end
