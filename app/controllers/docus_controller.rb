class DocusController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]

  def index
    # @docus = Docu.all

    @docus = Docu.all.sort_by{|f| f.ind}
    @years = @docus.map{|f| f.year.to_i}
    @years = @years.uniq
    @years.sort!{ |a,b| b <=> a }
    @toggler = true
  end

  def new
    @docu = Docu.new
  end

  def create

    docu = Docu.new(docus_params)
    if docu.save!
      docu.update(ind: docu.id)
      redirect_to docus_path
    else
      render :new
    end

  end

  def show
    @docu = Docu.find(params[:id])
  end

  def edit
    @docu = Docu.find(params[:id])
  end

  def update
    @docu = Docu.find(params[:id])
    @docu.update(docus_params)
    redirect_to docus_path
  end

  def destroy
    @docu = Docu.find(params[:id])
    @docu.destroy
    redirect_to docus_path

  end

  private

  def docus_params
    params.require(:docu).permit(:title, :synopsis, :realisator, :duration, :year, :casting, :generique, :technical_mentions, :festivals, :photo)
  end
end
