class DashboardsController < ApplicationController

  def index
    @bookings = policy_scope(Booking)
    @upcoming_bookings = Booking.joins(:waterings).where("date > ?", Date.today.strftime("%Y-%m-%e")).order("id asc").distinct
    @past_bookings = Booking.joins(:waterings).where("date < ?", Date.today.strftime("%Y-%m-%e")).order("id asc").distinct
    @user = current_user
    @bookings = Booking.where(user_id: @user)
    @jungles = Jungle.where(user_id: @user)
    authorize @bookings
  end
end
