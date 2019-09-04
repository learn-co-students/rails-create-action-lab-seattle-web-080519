class StudentsController < ApplicationController
  def index
    @students = Student.all
  end
  def show
    @student = Student.find(params[:id])
  end
  def new
    @student = Student.new
  end
  def create
    @student = Student.create(param_check)
    redirect_to student_path(@student)
  end
  private
  def param_check
    params.permit(:first_name, :last_name)
  end
end
