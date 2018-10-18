class Cart < ApplicationRecord
  has_many :cart_items
  has_many :products, through: :cart_items
  belongs_to :user, optional: true # Carts can be associated with users if users are logged in, but will be nil if shopping as a guest
end
