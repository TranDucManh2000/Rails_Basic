class SessionController < ApplicationController

  skip_before_action :require_login, only: [:new, :create]

  def new
  end

  def create
    user = User.find_by name: params[:session][:name].downcase
    # binding.pry
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to show_path
    else
      flash[:danger] = "Invalid email/password combination"
      render :new
    end
  end

  def destroy
    log_out
    flash[:success] = "You are logged out"
    redirect_to login_path
  end

end
