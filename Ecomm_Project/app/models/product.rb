class Product < ActiveRecord::Base
  validates :product_name, presence:true
  validates :price, presence: true
  validates :quantity, numericality: true
end
