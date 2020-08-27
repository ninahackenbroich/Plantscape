class DashboardsController < ApplicationController

  def index
    @bookings = policy_scope(Booking)
    @user = current_user
    @bookings = Booking.where(user_id: @user)
    @jungles = Jungle.where(user_id: @user)
    authorize @bookings
  end
end
