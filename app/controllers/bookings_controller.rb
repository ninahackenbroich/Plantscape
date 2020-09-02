class BookingsController < ApplicationController
  def index
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    booking_params[:number_of_plants] = booking_params[:number_of_plants].to_i
    @booking = Booking.new(booking_params)
    redirect_to new_booking_path, notice: "Make sure you choose a day" if params[:watering_dates].empty?
    @booking.user = current_user
    @booking.price = params[:booking][:price].to_i
    if @booking.save!
      watering_dates = params[:watering_dates].split(", ")
      watering_dates.each { |date| Watering.create(date: date, booking: @booking) }
      # redirect_to dashboards_path, notice: 'Booking was successfully created.'
      order = Order.create!(booking: @booking, amount: @booking.price, state: 'pending', user: current_user)
      session = Stripe::Checkout::Session.create(
        payment_method_types: ['card'],
        line_items: [{
          name: "Your watering booking",
          # images: [booking.photo_url],
          amount: @booking.price_cents,
          currency: 'eur',
          quantity: 1
        }],
        success_url: order_url(order),
        cancel_url: order_url(order)
      )

      order.update(checkout_session_id: session.id)
      redirect_to new_order_payment_path(order)
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
