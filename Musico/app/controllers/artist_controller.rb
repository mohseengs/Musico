class ArtistController < ApplicationController
  def new

  end

  def create

    @artist = Artist.new(artist_params)

    if(@artist.save)
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
    @artist = Artist.find_by_email(email)

    if(@artist != nil)
      if(@artist.password == password)
        session[:user_id] = @artist.id
        redirect_to root_path
      else
        redirect_to login_path
      end 
    else
      redirect_to login_path
    end
  end

  def logout
    session[:artist_id] = nil
  end

  private 
  def artist_params
    params.permit(:name, :email, :phone_no, :password)
  end
end

