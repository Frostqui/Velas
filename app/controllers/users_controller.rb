class UsersController < ApplicationController
    
    
    def new
        @user = User.new
    end

    def create 
     @user = User.new(user_params) 
     if @user.save 
       session[:user_id] = @user.id 
       @user.save
      redirect_to @user
    else 
      redirect_to '/signup' 
    end 
  end

  def show
       @user = User.find_by_username(params[:id])
    end

    private
  def user_params
    params.require(:user).permit(:username, :email, :password)
  end

 

end
