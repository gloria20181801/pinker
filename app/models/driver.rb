class Driver < ApplicationRecord
  has_many :cars
  has_many :orders
  
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }, allow_nil: true
end
