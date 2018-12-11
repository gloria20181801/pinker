module DriversHelper
  def can_accept order
    order.driver_id.nil?
  end
end
