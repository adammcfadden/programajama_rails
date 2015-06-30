class SectionsController < ApplicationController
  def index
    @sections = Section.all
  end

  def new
    @section = Section.new
  end

  def create
    @section = Section.new(section_params)
    if @section.save
      flash[:alert] = "YOU MADE A LESSON, WAY TO GO FRIEND"
      redirect_to sections_path
    else
      render :new
    end
  end

  def show
    @section = Section.find(params[:id])
  end

  def destroy
    @section = Section.find(params[:id])
    @section.destroy
    redirect_to sections_path
  end

  def edit
    @section = Section.find(params[:id])
  end

  def update
    @section = Section.find(params[:id])
    if @section.update(section_params)
      redirect_to section_path(@section)
    end
  end

  private def section_params
    params.require(:section).permit(:name)
  end

end
