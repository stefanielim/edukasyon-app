class Admin::ProfessorsController < Admin::BaseController
  before_action :find_and_set_professor, only: [:show, :edit, :update, :destroy]

  def index
    @professors = Professor.all.order(id: :asc)
  end

  def show
  end

  def new
    @professor = Professor.new
  end

  def create
    @professor = Professor.new(professor_params)

    if @professor.save
      redirect_to admin_professors_path, notice: "#{@professor.name} was successfully created."
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @professor.update(professor_params)
      redirect_to admin_professor_path(@professor), notice: "#{@professor.name} was successfully updated."
    else
      render 'edit'
    end
  end

  def destroy
    @professor.destroy

    redirect_to admin_professors_path, notice: "#{@professor.name} was successfully deleted."
  end

  private

  def find_and_set_professor
    @professor = Professor.find params[:id]
  end

  def professor_params
    params.require(:professor).permit(:name)
  end
end
