class SubjectsController < ApplicationController

    def index
        @user = User.find_by_id(params[:user_id])
        @subjects = @user.subjects.all
    end

    def new
        @subject = Subject.new
    end

    def create
      @subject = current_user.subjects.build(subject_params)
        if @subject.save
            redirect_to user_subjects_path(current_user)
        else 
            render :new
        end
    end

    def show
        current_user
       @subject = Subject.find_by_id(params[:id])
    end

    private
    def subject_params
        params.require(:subject).permit(:name, :user_id)
    end

    def current_user
        @user = User.find_by_id(params[:user_id])
    end
end
