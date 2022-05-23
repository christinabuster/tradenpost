class Trade < ApplicationRecord
  belongs_to :category

  validates :product, presence: true
  validates :description, presence: true
end
