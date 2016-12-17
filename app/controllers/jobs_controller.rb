class JobsController < ApplicationController
  def index
    @jobs = Job.all
  end

  def new
    @job = Job.new
    @boat = Boat.find(params[:boat_id])
  end

  def edit
  end

  def show
  end

  def create
     @boat = Boat.find(params[:boat_id])
     @job = @boat.jobs.new(job_params)
    if @boat.jobs << @job
      redirect_to job_path @job
    else
      redirect_to jobs_path
    end
  end

  def update
  end

  def destroy
  end

   private
  def job_params
    params.require(:job).permit(:name, :cost, :origin, :destination)
  end
end

