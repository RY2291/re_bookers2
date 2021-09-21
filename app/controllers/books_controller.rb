class BooksController < ApplicationController
  
  def new
    @book = Book.new
  end
  
  def create
    book = Book.new(book_params)
    book.user_id = current_user.id
    book.save
    redirect_to book_path(book.id)
  end
  
  def show
    @book = Book.new
  end

  def index
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
  private
  def book_params
    params.requier(:book).permit(:title, :body)
  end
end
