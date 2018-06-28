class StudentsController < ApplicationController
    def new
        @student = Student.new
    end

    def create
        @student = Student.new(student_params)
        @student.save
        redirect_to student_path(@student)
    end

    def show
        @student = Student.find(params[:id])
    end

    def edit
        @student = Student.find(params[:id])
    end

    def update
        @student = Student.find(params[:id])
        @student.update(school_class_params)
        redirect_to school_class_path(@student)
    end

    private

    def student_params
        params.require(:school_class).permit(:title, :room_number)
    end


end
