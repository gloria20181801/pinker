module StudentsHelper
  

  def find_order order
    @current_user.orders.find_by(id: order.id)
  end
  def can_join order
    find_order(order).nil?
  end
  def is_creator order
    so = StudentOrder.find_by(student_id: current_user.id , order_id: order.id)
    !so.nil? and so.is_creator?
  end
  def can_edit order
    is_creator(order) and order.cur_number < order.number
  end
  def can_delete order
    is_creator(order) and order.cur_number == 1
  end
  
  def can_quit order
    order.driver_id.nil? and !StudentOrder.find_by(student_id: current_user.id , order_id: order.id).nil?
  end
  
  def is_passed
    current_user.pass
  end
  
  def accepted order
    !order.driver_id.nil?
  end
end
