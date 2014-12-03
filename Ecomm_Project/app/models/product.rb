class Product < ActiveRecord::Base
  belongs_to :category
  validates :product_name, presence:true
  validates :price, presence: true
  validates :quantity, numericality: true
end
