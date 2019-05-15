class Review < ApplicationRecord
  belongs_to :restaurant
  validates :restaurant_id, :content, :rating, presence: true
  validates :rating, numericality: { only_integer: true }, inclusion: { in: [0, 1, 2, 3, 4, 5], message: 'rate should be between 0 and 5' }, allow_nil: false
end
