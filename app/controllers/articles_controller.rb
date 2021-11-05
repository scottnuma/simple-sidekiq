class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
    HardWorker.perform_async(@article.id, 2)
  end
end
