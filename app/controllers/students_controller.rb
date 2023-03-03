class StudentsController < ApplicationController

    def index
        @students = Student.all
    end

    def new
        @student = Student.new
    end

    def create
        @student =  current_user.students
        if @student.create(student_params)
            redirect_to students_path
         else
            redirect_to students_path
         end
    end

    private

    def student_params
      params.require(:student).permit :name, :age, :gender, :class_name
    end
    
end
