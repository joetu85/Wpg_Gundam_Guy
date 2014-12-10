class AddTaxToProvince < ActiveRecord::Migration
  def change
    add_column :provinces, :tax, :float
  end
end
