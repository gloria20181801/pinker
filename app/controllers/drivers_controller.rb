class DriversController < ApplicationController
  def show
    @user = Driver.find(params[:id])
  end
  def new
    @user = Driver.new
  end
  def edit
  end
  def create
   
    @user = Driver.new(driver_params)
    @user.pass = false
    @user.id_card = @@driver_id_card_default
    @user.license = @@driver_license_default
    @user.head = @@driver_head_default
    if @user.save
      flash[:success] = "Success Sign up!"
      log_in @user
      redirect_to root_url
    else
      flash[:danger] = @user.errors.full_messages.first
      redirect_to action: 'new'
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
end
