class StudentsController < ApplicationController

  def index
    # bonus: use query params in the index action to return a list of all students whose first or last name matches the query parameter
    students = if params[:name]
                  Student.by_name(params[:name])
                else
                  Student.all
                end 
    render json: students
    
  end

  def show
    student = Student.find_by(id: params[:id])
    render json: student
  end 

end
