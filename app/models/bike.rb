class Bike < ApplicationRecord
  belongs_to :user

  validates :name, presence: true, length: { maximum: 255 }
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :description, presence: true
  validates :category, presence: true
  validates :location, presence: true
end
