class Province < ActiveRecord::Base
  has_many :customers
  validates :name, :tax, presence: true
end
