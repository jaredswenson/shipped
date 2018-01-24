class ExercisesController < ApplicationController
  def index
    @exercises = Exercise.all
  end

  def new
    @exercise = Exercise.new
  end

  def edit
  end

  def show
  end

  def create
    @exercise = Exercise.new(exercise_params)
    if @exercise.save
      redirect_to root
    else
      
    end
  end

  def update
  end

  def destroy
    Exercise.find(params[:id]).destroy
    # redirect_to root
  end

  private
  def exercise_params
    params.require(:exercise).permit(:name, :category, :primary_muscle)
  end
end
