class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    # The new action instantiates a new article, but does not save it.
    # By default, the new action will render app/views/articles/new.html.erb, which we will create next.
    @article = Article.new
  end

  def create
    # The create action instantiates a new article with values for the title and body, and attempts to save it.
    @article = Article.new(title: "...", body: "...")

    if @article.save
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end
  end
end
