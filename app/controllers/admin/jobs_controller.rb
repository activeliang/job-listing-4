class Admin::JobsController < ApplicationController
 before_action :authenticate_user!,only:  [:new, :create, :update, :edit, :destroy]

  def index
    @jobs = Job.all

  end

 def show
   @job = find(params[:id])

 end

  def new
    @job = new

  end

  def create
    @job = Job.new(job_params)
    if @job.save
      redirect_to admin_jobs_path
    else
      render :new
    end

  end

  def edit
    @job = find(params[id])

  end

  def update
    @job = find(params[id])
    if @job.update(job_params)
      redirect_to admin_jobs_path
    else
      render :edit
    end
  end

  def destroy
    @job = Job.find(params[id])
    @job.destroy
      redirect_to admin_jobs_path
  end



  private

  def job_params
    params.require(:job).permit(:title, :description)

  end
end
