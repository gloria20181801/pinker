class Driver < ApplicationRecord
  has_many :cars
  has_many :orders
  
  has_secure_password
end
