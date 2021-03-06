class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(username: params[:session][:username])
    if user && user.authenticate(params[:session][:password])
      set_session user
      redirect_to root_path
    else
      flash.now[:error] = 'Invalid username/password combination'
      render :new
    end
  end

  def destroy
    delete_session
    redirect_to root_path
  end
end
