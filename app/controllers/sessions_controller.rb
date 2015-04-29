class SessionsController < ApplicationController
  before_action :authorize, except: [:new, :create]
  def new
  end
  
  def create
    @user = User.find_by(nickname: params[:session][:nickname])
    if @user && @user.authenticate(params[:session][:password])
      session[:userid] = @user.id
      redirect_to @user
      flash.now[:message] = 'Signed in!'
    else
      flash.now[:message] = 'Invalid email/password combination'
      render 'new'
    end
  end
  
  def index
    if (session[:userid])
      redirect_to games_url
    end
  end
  
  def destroy
    session[:userid] = nil
    session.clear
    redirect_to '/', notice: "Signed out!"
  end
end
