class PubsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @pubs = Pub.all
  end

  def new
    @pub = Pub.new
  end

  def create

    pub = Pub.new(pubs_params)
    if pub.save!
      redirect_to pubs_path
    else
      render :new
    end

  end

  def show
    @pub = Pub.find(params[:id])
  end

  def edit
    @pub = Pub.find(params[:id])
  end

  def update
    @pub = Pub.find(params[:id])
    @pub.update(pubs_params)
    redirect_to pubs_path
  end

  def destroy
    @pub = Pub.find(params[:id])
    @pub.destroy
    redirect_to pubs_path

  end

  private

  def pubs_params
    params.require(:pub).permit(:title, :synopsis, :realisator, :duration, :year, :casting, :generique, :technical_mentions, :festivals, :photo)
  end
end
