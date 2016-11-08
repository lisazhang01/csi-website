class API::TeachersController < ApplicationController

  before_action :set_teacher, only: [:show, :update, :destroy]
  before_action :set_teachers, only: [:index]
  before_action :teacher_params, only: [:create, :update]

#Show all teachers
  def index
    render json: @teachers
  end

#Show one teacher
  def show
    render json: @teacher
  end

#Create new teacher
  def create
    @teacher = Teacher.new(teacher_params)

    if @teacher.save

      render json: @teacher, status: 201, location: api_teachers_path
    else
      render json: @teacher.errors.messages, status: 404
    end
  end

#Update teacher's details
  def update
    @teacher.assign_attributes(teacher_params)

    if @teacher.save
      head 201
    else
      render json: { message: "Teacher doesn't exist" }, status: 404
    end
  end

#Delete one teacher
  def destroy
    if @teacher.destroy
      render json: @, status: 201, location: api_teachers_path
    else
      render json: @teacher.errors.messages
    end
  end


private
  def set_teachers
    @teachers = Teacher.all
    if @teachers.nil?
      render json: "No Teachers Found", status: 404
    end
  end

  def set_teacher
    @teacher = Teacher.find_by(id: params[:id])
    if @teacher.nil?
      render json: "Teacher with id #{params[:id]} not found", status: 404
    end
  end

  def teacher_params
    params.permit(:id, :first_name, :last_name, :employee_id, :email, :mobile_phone, :home_phone, :address, :bio)
  end
end
