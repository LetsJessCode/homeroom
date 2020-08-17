class SubjectsController < ApplicationController

    def index
        @user = User.find_by_id(params[:user_id])
        @subjects = @user.subjects.all
    end

    def new
        if params.include?('user_id')
            @subject = User.find_by_id(params[:user_id]).subjects.build
        else 
            @subject = Subject.new
            @subject.assignments.build 
        end
    end

    def create
      @new_subject = current_user.subjects.build(subject_params)
        if @new_subject.save
            redirect_to user_subject_path(current_user, @new_subject)
        else 
            render :new
        end
    end

    def show
        @assignments= Assignment.find_by_id(params[:assignment_id])
        @assignments = current_user.subjects.all
        current_user
       @subject = Subject.find_by_id(params[:id])
    end

    private
    def subject_params
        params.require(:subject).permit(:name, 
            assignments_attributes: [:name, :completed, :questions, :difficulty] )
    end

    def current_user
        @user = User.find_by_id(params[:user_id])
    end
end
