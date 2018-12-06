class Order < ApplicationRecord
  has_many :students, :through => :student_orders
  belongs_to :driver, :optional => true
end
