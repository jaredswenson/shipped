class BoatsController < ApplicationController
  def index
    @boats = Boat.all
  end

  def new
    @boat = Boat.new
  end

  def edit
    @boat = Boat.find(params[:id])
  end

  def show
    @boats = Boat.find(params[:id])
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
    @boat = Boat.find(params[:id]).update_attributes(boat_params)
    redirect_to boats_path 
  end

  def destroy
  end

  private
  def boat_params
    params.require(:boat).permit(:user_id, :name, :containers, :location, :avatar)
  end
end
