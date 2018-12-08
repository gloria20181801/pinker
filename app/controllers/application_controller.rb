class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  @@driver_id_card_default = 'drivers/id_card/driver1@example.com.png'
  @@driver_license_default = 'drivers/license/driver1@example.com.png'
  @@driver_head_default = 'drivers/head/driver1@example.com.png'
  @@student_id_card_default = 'students/id_card/s1@example.com.png'
  @@student_head_default = 'students/head/s1@example.com.png'
  
  include SessionsHelper
end
