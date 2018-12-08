class ManagersController < ApplicationController
  def show
    @user = Manager.find(params[:id])
  end
end
