class Bike < ApplicationRecord
  CATEGORIES = %w[City Electric] # Gravel Dirt Road City Trekking Mountain BMX]
  belongs_to :user
  has_many :bookings

  validates :name, presence: true, length: { maximum: 255 }
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :description, presence: true
  validates :category, inclusion: { in: CATEGORIES }
  validates :location, presence: true
end
