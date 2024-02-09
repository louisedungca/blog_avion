class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def show
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def destroy
  end


  private

  def article_params
    params
      .require(:article)
      .permit(
        :title,
        :body,
        :author_name,
      )
  end

end
