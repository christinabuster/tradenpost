class Trade < ApplicationRecord
  belongs_to :categories
  
  validates :product, presence: true
  validates :description, presence: true
end
