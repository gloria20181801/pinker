class IndexController < ApplicationController
  
  def index
     @orders = Order.all
    pp 'mylog', @orders
    @orders
  end
  
  def new
  end
  def orders
   
  end
end
