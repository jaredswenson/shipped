class DaysController < ApplicationController
  def index
    @days = Day.all
  end

  def edit
  end

  def show
  end

  def create
    puts params.inspect
    @day = Day.new(day_params)
    if @day.save
      if params[:user_id]
        @user = User.find(params[:user_id]) 
        @user.day_id = @day.id
        @user.save
      end
      params[:exercises].each do |day, id|
       @day.workouts.create(day_number: day.split(/: */)[1].to_i, exercise_id: id)
      end
      redirect_to trainer_index_path
    else
      redirect_to trainer_index_path
    end
  end

  def update
  end

  def destroy
  end

  def new
    @exercises = Exercise.all
    @day = Day.new
  end

  private
  def day_params
    params.require(:day).permit(:name, :execise_id, :user_id)

end
