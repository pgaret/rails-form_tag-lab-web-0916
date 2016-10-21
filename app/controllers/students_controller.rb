class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    Student.create(first_name: params[:student][:f_name], last_name: params[:student][:l_name])
    redirect_to student_path(Student.all.last)
  end

end
