class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :bike

  validates :user_id, presence: true
  validates :bike_id, presence: true
  validates :checkin, presence: true
  validates :checkout, presence: true
  validate :check_dates_order

  private

  def check_dates_order
    if checkin && checkout && checkin >= checkout
      errors.add(:base, 'Check-out date must be after check-in date')
    end
  end
end
