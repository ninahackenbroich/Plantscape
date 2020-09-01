class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
    authorize @reviews
    @review = policy_scope(Review)
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @user = current_user
    @review = Review.new
    authorize @review
  end

  def create
    @review = Review.create(review_params)
    @user = current_user
    @review.user = @user
    @review.save
    redirect_to root_path
    authorize @review
  end

  private
  def review_params
    params.require(:review).permit(:title, :rating, :comment)
  end

end
