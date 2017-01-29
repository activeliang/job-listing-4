class JmcampresumeController < ApplicationController
  before_action :authenticate_user!

  def new

    @jmcampresume = Jmcampresume.new

  end

  def create
    @jmcampresume.user = current_user
    @jmcampresume = Jmcampresume.new(jmcampresume_params)

    if @resume.save
      flash[:notice] = "成功提交履历"
      redirect_to root_path
    else
      render :new
  end

  private

  def jmcampresume_params
    jmcampresume.require(:jmcampresume).permit(:content)

  end
end
