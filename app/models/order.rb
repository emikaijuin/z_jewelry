class Order < ApplicationRecord
  ## Associations
  has_many :order_items
  has_many :products, through: :order_items

  ## Validations 
  validate :require_address_before_confirming
  
  def require_address_before_confirming # Cannot confirm an order unless address has been set
    if self.confirmed? && !self.address_id
      errors.add("You must select an address before confirming order.")
    end
  end

  ## Confirmation Status
  enum status: [:unconfirmed, :pending, :confirmed]
end

