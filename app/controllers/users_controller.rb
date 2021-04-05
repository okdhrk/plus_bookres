class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find(params[:id])
    @books = @user.books.all
    @book　= Book.new
  end

  def create
    @book = Book.new
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path(@book)
  end


  private
  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end
end
