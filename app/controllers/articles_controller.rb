class ArticlesController < ApplicationController

  def index
    @articles = Article.all.order(created_at: :desc)
  end

  def show
    @article = Article.find_by(id: params[:id])

    if @article.nil?
      @articles = Article.all
      flash[:alert] = "Blog post not found."
      render :index
    end
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to articles_index_path, notice: "Blog post successfully created!"
    else
      render :new, status: 422
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article, notice: "Blog post successfully updated!"
    else
      render :edit, status: 422
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to root_path, status: 303
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
