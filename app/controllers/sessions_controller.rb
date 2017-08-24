class SessionsController < ApplicationController
  include SessionsHelper

  def new
  end

  def create
    @employee = Employee.find_by(email: params[:session][:username])
    @errors = []
    if @employee && @employee.authenticate(params[:session][:password])
      set_session(@employee)
      redirect_to root_path
    else
      @errors << "Invalid username and password combination"
      render :new
    end
  end

  def destroy
    delete_session
    redirect_to root_path
  end
end
