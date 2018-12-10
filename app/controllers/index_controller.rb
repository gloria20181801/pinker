class IndexController < ApplicationController
  
  def index
    user = current_user.class.to_s
    pp 'mylog',params[:page]
    @orders = nil
    if user == 'Student' or user == 'NilClass'
      @orders = Order.paginate(:page=>params[:page],:per_page=>5).where('cur_number != number')
    elsif user == 'Driver'
      @orders = Order.paginate(:page=>params[:page],:per_page=>5).where("cur_number = number")
    elsif user == 'Manager'
      @orders = Order.paginate(:page=>params[:page],:per_page=>5).all
    else
      render 'error'
    end
   
    @orders
  end
  
  def new
  end
  def orders
   
  end
end
