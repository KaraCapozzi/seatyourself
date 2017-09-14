class Reservation < ApplicationRecord
  validates :date, :time, :people, presence: true
  validate :availability
  belongs_to :user
  belongs_to :restaurant

  def availability
    max_capacity = 100
    seats_filled = Reservation.where(restaurant_id: self.restaurant_id).where(date: self.date).where(time: self.time).sum(:people)
    available = max_capacity - seats_filled
      if self.people > available
        errors.add(:people, "This day and time is unavailable at the moment for your party. Please try another date or time.")
      end
    end
  end
