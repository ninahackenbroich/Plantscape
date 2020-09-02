class OrdersController < ApplicationController
  def create
    # booking = Booking.find(params[:booking_id])
    order = Order.create!(booking: @booking, amount: @booking.price, state: 'pending', user: current_user)
    authorize order
    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: "Your watering booking",
        # images: [booking.photo_url],
        amount: booking.price_cents,
        currency: 'eur',
        quantity: 1
      }],
      success_url: order_url(order),
      cancel_url: order_url(order)
    )

    order.update(checkout_session_id: session.id)
    redirect_to new_order_payment_path(order)
  end

  def show
    @order = current_user.orders.find(params[:id])
    authorize @order
    # redirect_to dashboards_index_path(order: @order)
  end
end
