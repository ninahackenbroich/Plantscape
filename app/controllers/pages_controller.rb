class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @plants = Plant.all
    @reviews = Review.all
    authorize @reviews
    @review = policy_scope(Review)
    @newreview = Review.new
  end

  private
  def review_params
    params.require(:review).permit(:title, :rating, :comment)
  end

  def chats
    general = Chatroom.find_by(name: "general")
    redirect_to chatroom_path(general) if general
  end
end
