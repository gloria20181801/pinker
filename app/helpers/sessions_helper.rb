module SessionsHelper
<<<<<<< HEAD

  def log_in(user)
    session[:user_id] = user.id
  end

=======
  def log_in(user)
    session[:user_email] = user.email
  end
  
  def current_user
    @current_user ||= Driver.find_by(email: session[:user_email])
    @current_user ||= Student.find_by(email: session[:user_email])
    @current_user ||= Manager.find_by(email: session[:user_email])
  end
  
  def logged_in?
    !current_user.nil?
  end
  
  def log_out
    session.delete(:user_email)
    @current_user = nil
  end
>>>>>>> 949844079c6c656c87f676277d80c1b00e5fcb09
end
