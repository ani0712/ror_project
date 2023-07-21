class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to @user
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end
  
  def update
      @user = User.find(params[:id])
  
      if @user.update(user_params)
        redirect_to @user
      else
        render :edit, status: :unprocessable_entity
      end
  end
  
  def destroy
      @user = User.find(params[:id])
      @user.destroy
  
      redirect_to users_path, status: :see_other
  end

  def all_data
    @element = Admin.all
  end


  private
  def user_params
    params.require(:user).permit(:name, :email, :ph_no, :disease, :order_date, :medicine_name)
  end
end
