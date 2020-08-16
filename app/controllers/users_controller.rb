class UsersController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)

        if @user.save
            session[:user_id] = @user.id
            redirect_to users_path
        else
            render :new
        end
    end

    def index
        @users = User.all
    end

    private
    def user_params
        params.require(:user).permit(:first_name, :last_name, :age, :email, :password)
    end
end
