class FictionsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @fictions = Fiction.all
  end

  def new
    @fiction = Fiction.new
  end

  def create

    fiction = Fiction.new(fictions_params)
    if fiction.save!
      redirect_to fictions_path
    else
      render :new
    end

  end

  def show
    @fiction = Fiction.find(params[:id])
  end

  def edit
    @fiction = Fiction.find(params[:id])
  end

  def update
    @fiction = Fiction.find(params[:id])
    @fiction.update(fictions_params)
    redirect_to fictions_path
  end

  def destroy
  end

  private

  def fictions_params
    params.require(:fiction).permit(:title, :synopsis, :realisator, :duration, :year, :casting, :generique, :technical_mentions, :festivals, :photo)
  end


end
