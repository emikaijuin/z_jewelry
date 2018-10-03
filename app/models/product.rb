class Product < ApplicationRecord
  belongs_to :user
  validates :description, presence: true
end
