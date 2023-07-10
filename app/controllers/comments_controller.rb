class CommentsController < ApplicationController
  def index
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comment.create(comment_params)
    redirect_to article_path(@article)
  end

  def destroy
    @article = Article.find(params[:article_id])
    @comm = @article.comment.find(params[:id])
    @comm.destroy
    redirect_to article_path(@article)
  end

  private
    def comment_params
      params.require(:comment).permit(:body, :article_id)
    end

end
