class CoursesController < ApplicationController
  before_action :find_and_set_course, only: [:show]

  def index
    @courses = Course.all.order(id: :asc)
  end

  def show
  end

  private

  def find_and_set_course
    @course = Course.find params[:id]
  end
end
