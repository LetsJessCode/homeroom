class SessionController < ApplicationController
    def new
        @user = User.new
    end
    
    def create
        @user = User.find_by_email(user_params[:email])
    
        if @user && @user.authenticate(user_params[:password])
            session[:user_id] = @user.id
            redirect_to users_path
        else
            render :new
        end
    end
end
