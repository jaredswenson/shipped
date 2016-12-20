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
    if @job.save
      @boat.jobs << @job
      redirect_to job_path @job
    else
      render "new"
    end
  end

  def update
  end

  def destroy
  end

  def addboats
    puts "THESE ARE THE PARAMS: #{params.inspect}"
    @job = Job.find(params[:job_id])
    params[:addingboats].each do |boat_id|
    @boat = Boat.find(boat_id)
      respond_to do |format|
        if @job.boats << @boat
          format.js #send back a addboats.js.erb page with js
        else
          format.json { render :json => {:error => "@job.errors.full_messages.to_sentence"}, :status => 422}
        end
      end
    end
  end

   private
  def job_params
    params.require(:job).permit(:name, :cost, :origin, :destination, :description, :containers)
  end
end

