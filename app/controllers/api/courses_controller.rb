class API::CoursesController < ApplicationController
  before_action :set_courses
  # before_action :set_course

  def index
    # render json: @set_courses
  end

  def show
    @course = Course.find_by(id: params[:id])
    render json: @course

    if @course.nil?
      render json: { message: "Cannot find course" }, status: :not_found
    end
  end

  def create
    @course = Course.new(course_params)

    if @course.save
      # render success in Jbuilder
    else
      render json: { message: "400 Bad Request" }, status: :bad_request
    end
  end

  def update
    @course = Course.find_by(id: params[:id])

    if @course.nil?
      render json: { message: "Cannot find course" }, status: :not_found
    else
      @course.update(course_params)
    end
  end

  def destroy
    @course = Course.find_by(id: params[:id])

    if @course.nil?
      render json: { message: "Cannot find course" }, status: :not_found
    else
      if @course.destroy
        render json: { message: "Successfully deleted" }, status: :no_content
      else
        render json: { message: "Unsuccessfully deleted" }, status: :bad_request
      end
    end
  end

  private

  def set_courses
    @courses = Course.all
    @message = "No Courses Found" if @courses.empty?
  end

  # def set_course
  #   @course = Course.find_by(id: params[:id])
  #   @message = "Cannot find Course with ID #{params[:id]}" if @course.nil?
  # end

  def course_params
    params.require(:course).permit(:title, :begin_date, :end_date, :capacity, :location, :description, :syllabus)
  end

end