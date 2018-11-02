class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    @students = Student.find(params[:id])
    
  end

  def activate
    @students = Student.find(params[:id])
    @students.toggle
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end

end