class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy # this means that when deleting a restaurant you will delete all of its reveiws
  validates_associated :reviews # not necessary here
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: %w[chinese italian japanese french belgian], message: '%{value} is not a valid category' }
end
