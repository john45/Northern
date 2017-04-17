# frozen_string_literal: true

class FeedController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user
    @article = @user.articles.build
    @articles = @user.articles.paginate(page: params[:page])
  end
end
