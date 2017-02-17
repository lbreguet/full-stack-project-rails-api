# frozen_string_literal: true

class ArticlesController < OpenReadController
  before_action :set_article, only: [:update, :destroy]

  # GET /articles
  def index
    @articles = Article.all

    render json: @articles
  end

  # GET /articles/1
  def show
    render json: Article.find(params[:id])
  end

  # POST /articles
  def create
    @article = current_user.articles.build(article_params)

    if @article.save
      render json: @article, status: :created
    else
      render json: @article.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /articles/1
  def update
    if @article.update(article_params)
      head :no_content
    else
      render json: @article.errors, status: :unprocessable_entity
    end
  end

  # DELETE /articles/1
  def destroy
    @article.destroy

    head :no_content
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_article
    @article = current_user.articles.find(params[:id])
  end
  private :set_article
  # Only allow a trusted parameter "white list" through.
  def article_params
    params.require(:article).permit(:title, :description, :body)
  end
  private :article_params
end
