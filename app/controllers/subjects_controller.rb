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

    private
    def subject_params
        params.require(:subject).permit(:name)
    end
end
