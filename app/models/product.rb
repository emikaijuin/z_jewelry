class Product < ApplicationRecord
  validates :description, presence: true
end
