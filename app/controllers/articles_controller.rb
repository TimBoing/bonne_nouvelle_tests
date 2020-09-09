class ArticlesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create

    article = Article.new(articles_params)
    if article.save!
      redirect_to articles_path
    else
      render :new
    end

  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update(articles_params)
    redirect_to articles_path
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path

  end

  private

  def articles_params
    params.require(:article).permit(:title, :contenu, :order, :link, :photo)
  end


end

