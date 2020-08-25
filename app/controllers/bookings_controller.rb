class BookingsController < ApplicationController
  def index
  end

  def show
  end

  def create
  	authorize @booking
  end

  def new
    @booking = Booking.new
    authorize @booking
  end

  def edit
  	authorize @booking
  end

  def update
  	authorize @booking
  end

  def destroy
  	authorize @booking
  end
end
