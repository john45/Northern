class StaticPagesController < ApplicationController
  before_action :authenticate_user!, only: [:success]

  def home
  end

  def success
  end
end
