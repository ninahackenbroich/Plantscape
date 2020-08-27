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
    booking_params[:number_of_plants] = booking_params[:number_of_plants].to_i
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    if @booking.save!
      watering_dates = params[:watering_dates].split(", ")
      watering_dates.each { |date| Watering.create(date: date, booking: @booking) }
      redirect_to dashboards_path, notice: 'Booking was successfully created.'
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
    params.require(:booking).permit(:number_of_plants, :key, :dusting_service, :cutting_service, :repotting_service, :picture_service, :price)
  end
end
