class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    student_path(@student)
    if @student.active
      @status = "active"
    else
      @status = "inactive"
    end
  end

  def activate_route
    #activate_student_path(@student)
    @student = Student.find(params[:id])
    @student.activate
    redirect_to student_path(@student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
