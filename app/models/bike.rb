class Bike < ApplicationRecord
  CATEGORIES = %w[City Electric] # Gravel Dirt Road City Trekking Mountain BMX]
  has_one_attached :photo
  belongs_to :user
  has_many :bookings

  validates :name, presence: true, length: { maximum: 255 }
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :description, presence: true
  validates :category, inclusion: { in: CATEGORIES }
  validates :location, presence: true

  include PgSearch::Model
pg_search_scope :search_by_location_and_category,
  against: [ :location, :category ],
  using: {
    tsearch: { prefix: true }
  }
end
