class Trade < ApplicationRecord

  validates :product, presence: true
  validates :description, presence: true
end
