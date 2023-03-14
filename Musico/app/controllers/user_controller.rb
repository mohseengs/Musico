class UserController < ApplicationController
  def new

  end

  def create

    @user = User.new(user_params)

    if(@user.save)
      redirect_to login_path
    else
      puts "not saved" 
    end

  end

  def show
  end

  def destroy
  end

  def login
  end

  def validate
    email = params[:email]
    password = params[:password]
    @user = User.find_by_email(email)

    if(@user != nil)
      if(@user.password == password)
        session[:user_id] = @user.id
        redirect_to root_path
      else
        redirect_to login_path
      end 
    else
      redirect_to login_path
    end
  end

  def logout
    session[:id] = nil
  end

  private 
  def user_params
    params.permit(:name, :email, :phone_no, :password)
  end
end
