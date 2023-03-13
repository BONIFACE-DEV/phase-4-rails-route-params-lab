class StudentsController < ApplicationController
  def show
    @student = Student.find(params[:id])
    render json: {
      id: @student.id,
      first_name: @student.first_name,
      last_name: @student.last_name,
      grade: @student.grade
    }
  end
  def index
    @students = Student.all
    render json: @students
  end
end
