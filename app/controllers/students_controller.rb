class StudentsController < ApplicationController
  def show
    @user = Student.find(params[:id])
  end
  def new
    @user = Student.new
  end
  def create
    @user = Student.new(student_params)
    @user[:pass] =false
    @user[:id_card] = @@student_id_card_default
    @user[:head] = @@student_head_default
    if @user.save
      flash[:success] = "Success Sign up!"
      log_in @user
      redirect_to @user
    else
      render 'error'
    end
  end
  
  def student_params
    params.require(:student).permit(
      :name,:sex,:phone,:password,
        :email,:password_confirmation
      )
  end
  
  def new_order
    @order = Order.new
  end
  def create_order
    @order = Order.new(order_params)
    if @order.save
      flash[:success] = "Success create order!"
      StudentOrders.create(student_id: current_user
      .id, oreder_id:order.id, bond:100.0, is_creator:true)
      redirect_to root_url
    else
      render 'error'
    end
  end
  
  def order_params
    params.require(:order).permit(
      :number, :time, :destination, :cur_number
      )
  end
  
end
