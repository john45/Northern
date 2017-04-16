class ArticlesController < ApplicationController
  before_action :authenticate_user!
  before_action :get_article, only: [:show, :destroy, :edit, :update]

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

  def edit
  end

  def update
    @article.update_attributes article_save_params
    if @article.errors.any?
      render :edit
    else
      redirect_to @article
    end
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
    params.require(:article).permit(:title, :body, :attach)
  end
end
