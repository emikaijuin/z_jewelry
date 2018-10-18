class Product < ApplicationRecord
  ## Associations
  has_many :order_items
  has_many :orders, through: :order_items
  ## Validations
  validates :description, presence: true
end
