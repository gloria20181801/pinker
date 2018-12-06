class Student < ApplicationRecord
  has_many :orders, :through => :student_orders
  has_secure_password
end
