class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    book = Book.new(book_params)
    @review = Review.create(params[:review])

    if book.save
      flash[:notice] = 'Book added successfully!'
      redirect_to book
    else
      flash.now[:notice] = 'Failed to add book. Please try again.'
      render :new
    end
  end

  def show
    @book = Book.find(params[:id])
    @review = Review.new
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    if book.update(book_params)
      redirect_to book
    else
      render :edit
    end
  end

  def destroy
    book = Book.find(params[:id]).destroy
    redirect_to books_path
  end

  private
  def book_params
    params.require(:book).permit(:title, :author, :genre, :summary, :cover)
  end
  def review_params
    params.require(:review).permit(:content, :rating)
  end

end