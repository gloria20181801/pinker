
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  @@driver_id_card_default = 'drivers/id_card/driver1@example.com.png'
  @@driver_license_default = 'drivers/license/driver1@example.com.png'
  @@driver_head_default = 'drivers/head/driver1@example.com.png'
  @@student_id_card_default = 'students/id_card/s1@example.com.png'
  @@student_head_default = 'students/head/s1@example.com.png'
  
  include SessionsHelper
  def search_params
    params.require(:search).permit(
      :time,:destination
      )
  end
  def search_empty?
    params[:search].nil? or ( params[:search][:time].empty? and params[:search][:destination].empty?)
  end
  def search orders
    if !search_empty?
      s = Search.new(search_params)
      s.save
      
      time = s.time
      destination = s.destination
      if !time.nil?
        orders = orders.where("time <= ?", time + 0.5/24)
        orders = orders.where("time >= ?", time - 0.5/24)
      end
      if !destination.empty?
        orders = orders.where(destination: destination)
      end
      s.delete
      
      
    end
    orders
  end
end
