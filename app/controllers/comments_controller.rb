# frozen_string_literal: true

class CommentsController < ApplicationController
  def new
    @comment = Comment.new(parent_id: params[:parent_id],
                           article_id: params[:article_id])
    render '_form_for_new_comment'
  end

  def create
    @comment = Comment.new save_parm_for_cr_comment
    if @comment.save
      redirect_to article_path(params[:comment][:article_id])
    else
      render 'articles/show'
    end
  end

  def update; end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to feed_path
  end

  def edit; end

  private

  def save_parm_for_cr_comment
    params.require(:comment).permit(:body, :article_id, :parent_id)
  end
end
