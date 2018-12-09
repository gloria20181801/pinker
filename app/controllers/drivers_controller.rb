class DriversController < ApplicationController
 # before_action :logged_in_user, only: [:index ,:edit, :update]
#  before_action :correct_user,   only: [:edit, :update]
  def index
  end
  
  def show
    @user = Driver.find(params[:id])
  end
  def new
    @user = Driver.new
  end
  def edit
    @user = Driver.find(params[:id])
  end
  
  def update
    @user = Driver.find(params[:id])
    if @user.update_attributes(driver_params)
      flash[:success] = "Profile updated"
      redirect_to @user
      else
      render 'edit'
    end
  end
  def create
    @user = Driver.new(driver_params)
    @user.pass = false
    @user.id_card = @@driver_id_card_default
    @user.license = @@driver_license_default
    @user.head = @@driver_head_default
    pp "my log" ,@user
    if @user.save
      flash[:success] = "Success Sign up!"
      log_in @user
      redirect_to @user
    else
      render 'error'
    end
  end
  

  
    def driver_params
      params.require(:driver).permit(:name,:sex,:phone,:password,
        :email,:password_confirmation,:bond)
    end
  def upload
    uploadFile(params[:file][:filedata])
  end
  def uploadFile(file)
    @filename = 'a.png'
    File.open("#{Rails.root}/assets/images/#{@filename}", "wb") do |f|
        f.write(file.read)# 向dir目录写入文件
      end
  end
  
  def to_take_order
    
  end
  
  def taken_order
  end
  
  def finished_order
  end
  
  
  
  
  
  def logged_in_user
      unless logged_in?
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
  end
  
  def correct_user
      @user = Driver.find(params[:id])
      redirect_to(root_url) unless @user == current_user
  end
  
  
end
