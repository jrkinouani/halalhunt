class HalalpostsController < ApplicationController
  before_action :find_halalpost,  only:[:show, :edit, :destroy]
  def index
    @halalposts = Halalpost.all.order("created_at DESC")
  end

  def new
    @halalpost = Halalpost.new
  end

  def show

  end

  def create
    @halalpost = Halalpost.new(halalposts_params)
    if @halalpost.save
      redirect_to @halalpost
    else
      render "new"
    end
  end

  def destroy

  end

  def edit

  end

  private

  def halalposts_params
    params.require(:halalpost).permit(:title, :description, :url)
  end

  def find_halalpost
    @halalpost = Halalpost.find(params[:id])
  end
end
