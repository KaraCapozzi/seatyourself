class Reservation < ApplicationRecord
  validates :date, :time, :people, presence: true
  validates :availabilitys
  belongs_to :user
  belongs_to :restaurant

def availability
  max_capacity = 100
  already_filled = 0
  reservations = Reservation.where(date: self.date).where(time: self.time)
  reservations.each do |reservation|
      already_filled += reservation.people
  end

  available = max_capacity - already_filled

if self.people > available
  reservations.errors[:date, :time] = 'This day and time is unavailable at the moment for your party.  Please try another date or time.'
end
end



end



end
