class Admin::CoursesController < Admin::BaseController
  before_action :find_and_set_course, only: [:show, :edit, :update, :destroy]

  def index
    @courses = Course.all.order(id: :asc)
  end

  def show
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)

    if @course.save
      redirect_to admin_courses_path, notice: "#{@course.name} was successfully created."
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @course.update(course_params)
      redirect_to admin_course_path(@course), notice: "#{@course.name} was successfully updated."
    else
      render 'edit'
    end
  end

  def destroy
    @course.destroy

    redirect_to admin_courses_path, notice: "#{@course.name} was successfully deleted."
  end

  private

  def find_and_set_course
    @course = Course.find params[:id]
  end

  def course_params
    params.require(:course).permit(:name, :description)
  end
end
