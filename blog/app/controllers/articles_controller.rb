class ArticlesController < ApplicationController

<<<<<<< HEAD
  http_basic_authenticate_with name: "sachin", password: "bhoi", except: [:index, :show]
=======
http_basic_authenticate_with name: "kunal", password: "kka", except: [:index, :show]

>>>>>>> 143ed3c90411b3724bdcf5848eb7e68a518a9feb

  def index
    @articles = Article.all
  end
<<<<<<< HEAD
  def show
    @article = Article.find(params[:id])
  end
 def new
  @article = Article.new
end

def edit
  @article = Article.find(params[:id])
end
 
def create
  @article = Article.new(article_params)
 
  if @article.save
    redirect_to @article
  else
    render 'new'
  end
end
 
def update
  @article = Article.find(params[:id])
 
  if @article.update(article_params)
    redirect_to @article
  else
    render 'edit'
  end
end

def destroy
=======
 
  def show
    @article = Article.find(params[:id])
  end
 
  def new
    @article = Article.new
  end
 
  def edit
    @article = Article.find(params[:id])
  end
 
  def create
    @article = Article.new(article_params)
 
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end
 
  def update
    @article = Article.find(params[:id])
 
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end
 
  def destroy
>>>>>>> 143ed3c90411b3724bdcf5848eb7e68a518a9feb
    @article = Article.find(params[:id])
    @article.destroy
 
    redirect_to articles_path
  end
<<<<<<< HEAD

private
  def article_params
    params.require(:article).permit(:title, :text)
  end
=======
 
  private
    def article_params
      params.require(:article).permit(:title, :text)
    end
>>>>>>> 143ed3c90411b3724bdcf5848eb7e68a518a9feb
end
