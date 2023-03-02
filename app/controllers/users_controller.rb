class UsersController < ApplicationController

    def index
      @users = User.all
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new user_params
        if @user.save
          flash[:success] = "Register success"
          redirect_to :action => 'index'
        else
          flash[:success] = "Register failed"
          render :new
        end
      end

    def destroy
      User.find(params[:id]).destroy
      redirect_to :action => 'index'
    end

    def edit
      @edit = User.find(params[:id])
    end

    def update
      @user = User.find(params[:id])
	
      if @user.update(user_params_edit)
         redirect_to :action => 'index', :id=>@user
      else
         render :action => 'edit'
      end
    end

    private

    def user_params
      params.require(:user).permit :name, :password, :password_confirmation
    end

    def user_params_edit
      params.require(:user).permit :name, :password
    end

end
