class StaticPagesController < ApplicationController
  before_action :authenticate_user!, only: [:success]

  def home
    redirect_to feed_path if current_user
  end

  def success
  end
end
