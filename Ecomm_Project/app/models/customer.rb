class Customer < ActiveRecord::Base
  belongs_to :province
  validates :first_name, :last_name, :address, :postalcode, presence: true
end
