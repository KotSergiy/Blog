class CommentsController < ApplicationController
  before_action :authenticate_user!, :only => [:create]

  def create
    @article=Article.find(params[:article_id])
    comment=Comment.new(comment_params)
    comment.author=current_user.username
    @article.comments << comment
    @article.save

    redirect_to @article
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
