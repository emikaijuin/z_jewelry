class Product < ApplicationRecord
  ## Associations
  # Products belong to many orders
  has_many :order_items
  has_many :orders, through: :order_items

  # Products belong to many carts
  has_many :cart_items
  has_many :carts, through: :cart_items
  
  ## Validations
  validates :description, presence: true
end
