class StudentsController < ApplicationController

    def index
        @students ||= current_user.students.all
    end

    def new
        @student = Student.new
    end

    def destroy
        current_user.students.find(params[:id]).destroy
        redirect_to students_path
    end

    def show
        @student ||= current_user.students.find(params[:id])
    end

    def edit
        @student ||= current_user.students.find(params[:id])
    end

    def create
        @student =  current_user.students.build student_params
        if @student.save
        redirect_to students_path
        else
         render :new
        end
    end

    def update
        @student = current_user.students.find(params[:id])
        if @student.update student_params_destroy
           redirect_to students_path
        else
           render :action => 'edit'
        end
    end

    private

    def student_params
      params.require(:student).permit :avatar,:name, :age, :gender, :class_name, parents_attributes: [:name, :address, :phone_number]
    end

    def student_params_destroy
        params.require(:student).permit :avatar,:name, :age, :gender, :class_name, parents_attributes: [:id,:name, :address, :phone_number,:_destroy]
    end
    
end

