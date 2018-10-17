class Order < ApplicationRecord
  validate :require_address_before_confirming
  enum status: [:unconfirmed, :pending, :confirmed]

  def require_address_before_confirming
    if self.confirmed? && !self.address_id
      errors.add("You must select an address before confirming order.")
    end
  end
end
