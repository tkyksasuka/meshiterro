class UsersController < ApplicationController
  def show
    @user = PostImage.find(params[:user_id]) #質問する
    @post_images = @user.post_images
  end

  def edit
    @user = PostImage.find(params[:user_id]) #質問する
  end

  def update
    @user = PostImage.find(params[:user_id])
    @user.update
    redirect_to user_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end

end
