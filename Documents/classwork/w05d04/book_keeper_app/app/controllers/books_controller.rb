class BooksController < ApplicationController
   def index
    @books = current_user.books
  end

  def show
    @user = current_user
    @books = @user.books.find(params[:id])
  end

  def new
    @book = current_user.books.new
  end

  def create
    user = User.find(current_user.id)
    user.books.create(book_params)

  end

  def edit
    @user = Post.find(params[:post_id])
    @book = @user.comments.find(params[:id])
  end

  def update
    user = Post.find(params[:post_id])
    book = user.comments.find(params[:id])
    book.update(comment_params)

    redirect_to user
  end

  def destroy
    user = Post.find(params[:post_id])
    user.comments.destroy(params[:id])
    redirect_to user

  end

  protected
  def book_params
    params.require(:book).permit(:title, :author, :img_url)
  end
end
