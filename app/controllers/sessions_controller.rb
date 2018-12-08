class SessionsController < ApplicationController
  def new
  end
  def create
    email = params[:session][:email]
    password = params[:session][:password]
    driver = find_driver(email,password)
    student = find_student(email, password)
    manager = find_manager(email, password)
    
    if !driver.nil?
      
      log_in(driver)
      redirect_to driver
    elsif !student.nil?
      log_in(student)
      redirect_to student
    elsif !manager.nil?
      log_in(manager)
      redirect_to manager
    else
      flash[:danger] = 'Invalid email/password combination'
    end
      
  end
  
  def destroy
    log_out
    redirect_to root_url
  end
  
  def find_driver(email, password)
    user = Driver.find_by(email: email.downcase)
    if user && user.authenticate(password)
      user
    else
      nil
    end
  end
  def find_student(email, password)
    user = Student.find_by(email: email.downcase)
    if user && user.authenticate(password)
      user
    else
      nil
    end
  end
  def find_manager(email, password)
    user = Manager.find_by(email: email.downcase)
    if user && user.authenticate(password)
      user
    else
      nil
    end
  end
end
