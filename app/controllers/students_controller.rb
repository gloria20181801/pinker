class StudentsController < ApplicationController
  def show
    @user = Student.find(params[:id])
  end
  def new
    @user = Student.new
  end
  def create
    @user = Student.create(student_params)
    @user[:pass] =false
    @user[:id_card] = @@student_id_card_default
    @user[:head] = @@student_head_default
    if @user.save
      flash[:success] = "Success Sign up!"
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
  
  
end
