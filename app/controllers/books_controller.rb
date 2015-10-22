class BooksController < ApplicationController
  def index
    @author = Author.find params[:author_id]
  end

  def show
    @book = Book.find params[:id]
  end

  def new
    @author = Author.find params[:author_id]
    @book = Book.new
  end

  def create
    @author = Author.find params[:author_id]
    @book = @author.books.build book_params
    @book.save
    redirect_to @book
  end

  def edit
    @book = Book.find params[:id]
  end

  def update
    @book = Book.find params[:id]
    @book.update book_params
    redirect_to @book
  end

  def destroy
    @book = Book.find params[:id]
    @book.destroy
    redirect_to authors_path
  end

  private

    def book_params
      params.require(:book).permit(:title)
    end

end
