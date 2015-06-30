class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all
  end

  def new
    @lesson = Lesson.new
    sections = Section.all
    @section_option_array = []
    sections.each do |section|
      @section_option_array.push([section.name, section.id])
    end
  end

  def create
    @lesson = Lesson.new(lesson_params)
    if @lesson.save
      section = Section.find(params[:section_id])
      section.lessons.push(@lesson)
      flash[:alert] = "YOU MADE A LESSON, WAY TO GO FRIEND"
      redirect_to lessons_path
    else
      render :new
    end
  end

  def show
    @lesson = Lesson.find(params[:id])
  end

  def destroy
    @lesson = Lesson.find(params[:id])
    @lesson.destroy
    redirect_to lessons_path
  end

  def edit
    @lesson = Lesson.find(params[:id])
  end

  def update
    @lesson = Lesson.find(params[:id])
    if @lesson.update(lesson_params)
      redirect_to lesson_path(@lesson)
    end
  end

  private def lesson_params
    params.require(:lesson).permit(:name, :body, :order_number)
  end

end
