class Trade < ApplicationRecord
  validates :category, presence: true
  
  validates :product, presence: true
  validates :description, presence: true
  validates :neighborhood, presence: true
end
