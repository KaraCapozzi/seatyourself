class User < ApplicationRecord
  has_secure_password
  # validates :name, :email, :phone_number, presence: true
  has_many :reservations
  has_many :restaurants, through: :reservations


end
