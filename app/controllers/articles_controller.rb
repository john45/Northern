class ArticlesController < ApplicationController
  before_action :authenticate_user!
  before_action :get_article, only: [:show, :destroy]

  def create
    @article = Article.new article_save_params
    @article.user_id = current_user.id
    @user = current_user
    if @article.save
      redirect_to feed_path
    else
      flash[:error] = 'You put not correct data'
      render 'feed/index'
    end
  end

  def show

  end

  def destroy
    @article.destroy
    flash[:success] = 'Remove article success'
    redirect_to feed_path
  end


  private

  def get_article
    @article = Article.find(params[:id])
  end

  def article_save_params
    params.require(:article).permit(:title, :body)
  end
end
