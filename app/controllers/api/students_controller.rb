class API::StudentsController < ApplicationController
  before_action :set_student, only: [:show, :update, :destroy]
  before_action :set_students, only: [:index]
  before_action :student_params, only: [:create, :update]

#Show all students
  def index
    render json: @students
  end

#Show one student
  def show
    render json: @student
  end

#Create new student
  def create
    @student = Student.new(student_params)

    if @student.save

      render json: @student, status: 201, location: api_students_path
    else
      render json: @student.errors.messages, status: 404
    end
  end

#Update the student's details
  def update
    @student.assign_attributes(student_params)

    if @student.save
      head 201
    else
      render json: { message: "Student doesn't exist" }, status: 404
    end
  end

#Delete one student
  def destroy
    if @student.destroy
      render json: @, status: 201, location: api_students_path
    else
      render json: @student.errors.messages
    end
  end


private
  def set_students
    @students = Student.all
    if @students.nil?
      render json: "No Students Found", status: 404
    end
  end

  def set_student
    @student = Student.find_by(id: params[:id])
    if @student.nil?
      render json: "Student with id #{params[:id]} not found", status: 404
    end
  end

  def student_params
    params.permit(:id, :first_name, :last_name, :email, :date_of_birth, :mobile_phone, :home_phone, :address, :current_school_name, :emergency_contact_name, :emergency_contact_relationship, :emergency_contact_number)
  end

end
