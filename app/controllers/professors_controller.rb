class ProfessorsController < ApplicationController
  before_action :find_and_set_professor, only: [:show]

  def index
    @professors = Professor.all.order(name: :asc)
  end

  def show
  end

  private

  def find_and_set_professor
    @professor = Professor.find params[:id]
  end
end
