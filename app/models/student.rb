class Student < ApplicationRecord
  has_many :student_orders
  has_many :orders, :through => :student_orders
  
  has_secure_password
end
