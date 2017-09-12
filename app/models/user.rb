class User < ApplicationRecord
  has_many :reservations
  has_many :restaurants through :reservation
end
