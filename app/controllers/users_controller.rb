class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find(params[:id])
    @books = @user.books.all
    @book　= Book.new
  end


  private
  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end
end
