class Customer < ActiveRecord::Base
  belongs_to :province
  belongs_to :order
  validates :first_name, :last_name, :address, :postalcode, presence: true
end
