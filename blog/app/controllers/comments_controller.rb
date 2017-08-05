class CommentsController < ApplicationController
<<<<<<< HEAD
  
 http_basic_authenticate_with name: "sp", password: "bhoi", only: :destroy

def create
=======
 http_basic_authenticate_with name: "kunal", password: "kka", only: :destroy
  def create
>>>>>>> 143ed3c90411b3724bdcf5848eb7e68a518a9feb
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
    redirect_to article_path(@article)
  end
 
<<<<<<< HEAD
def destroy
=======
  def destroy
>>>>>>> 143ed3c90411b3724bdcf5848eb7e68a518a9feb
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to article_path(@article)
  end
<<<<<<< HEAD

=======
 
>>>>>>> 143ed3c90411b3724bdcf5848eb7e68a518a9feb
  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
