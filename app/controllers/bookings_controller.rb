class BookingsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to @booking, notice: 'Booking was successfully created.'
    else
      render :new
    end
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

  private

  def booking_params
    params.require(:booking).permit(:key, :dusting_service, :cutting_service, :repotting_service, :picture_service, :price)
  end
end
