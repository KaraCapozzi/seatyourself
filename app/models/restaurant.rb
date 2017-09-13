class Restaurant < ApplicationRecord
    validates :name, :location, :opening_time, :closing_time, :max_capacity, :contact_phone, presence: true

    has_many :reservations
    has_many :users, through: :reservations

    #available seats for particular restuarant and call the method
    #where you need it
  
end
