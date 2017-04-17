# frozen_string_literal: true

class UsersController < ApplicationController
  def show; end

  def edit
    @user = current_user if current_user == User.find_by_id(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes save_attributes
      redirect_to feed_path
    else
      render :edit
    end
  end

  private

  def save_attributes
    params.require(:user).permit(:name)
  end
end
