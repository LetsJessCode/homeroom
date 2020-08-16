class SubjectsController < ApplicationController

    def index
        @subjects = Subject.all
    end

    def create
    @subject = Subject.create(subject_params)
        if @subject.save
            redirect_to subjects_path
        else 
            render :new
        end
    end

    private
    def subject_params
        params.require(:subject).permit(:name)
    end
end
