class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
    @books = Book.all
  end

  def create
    @book = Book.find(params[:book_id])
    @review = @book.reviews.create(review_params)
    
    if @review.save
      flash[:notice] = 'Review added successfully!'
      redirect_to book_path(@book)
    else
      flash.now[:notice] = 'Failed to create review. Please try again.'
      render :new
    end
  end

  def show
    @review = Review.find(params[:id])
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    review = Review.find(params[:id])
    if review.update(review_params)
      redirect_to review
    else
      render :edit
    end
  end

  def destroy
    review = Review.find(params[:id]).destroy
    redirect_to_root_path
  end

  private
  def review_params
    params.require(:review).permit(:content, :rating, :reviewer)
  end

end