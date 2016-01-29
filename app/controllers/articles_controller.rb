class ArticlesController < ApplicationController


  def index
    @articles = Article.all.reverse
  end

	def new
	end

  def show
    @article = Article.find(params[:id])
  end

	def create
  @article = Article.new(article_params)
 
  @article.save
  redirect_to @article
  end
  http_basic_authenticate_with name: "sandy", password: "secret", except: [:index, :show]

private
  def article_params
    params.require(:article).permit(:title, :text)
  end

end
