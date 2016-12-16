class BoatsController < ApplicationController
  def index
  end

  def new
    @boat = Boat.new
  end

  def edit
  end

  def show
    @boats = Boat.all
  end

  def create
    @boat = current_user.boats.new(boat_params)
    if @boat.save
      redirect_to boat_path @boat
    else
      redirect_to boats_path
    end
  end

  def update
  end

  def destroy
  end

  private
  def boat_params
    params.require(:boat).permit(:user_id, :name, :containers, :location)
  end
end
