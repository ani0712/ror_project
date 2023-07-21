class AdminsController < ApplicationController

    def index
      @admins = Admin.all
    end
  
    def create
      @admin = Admin.new(admin_params)
  
      if @admin.save
        redirect_to @admin
      else
        render :new, status: :unprocessable_entity
      end
    end
  
    def show
      @admin = Admin.find(params[:id])
    end
  
    def edit
      @admin = Admin.find(params[:id])
    end
  
    def new
      @admin = Admin.new
    end
    
    def update
        @admin = Admin.find(params[:id])
    
        if @admin.update(admin_params)
          redirect_to @admin
        else
          render :edit, status: :unprocessable_entity
        end
    end
    
    def destroy
        @admin = Admin.find(params[:id])
        @admin.destroy
    
        redirect_to admins_path, status: :see_other
    end

    def display_data
        @data = User.all
    end
  
  
    private
    def admin_params
      params.require(:admin).permit(:username, :password, :medicine_name, :medicine_price)
    end

end
  