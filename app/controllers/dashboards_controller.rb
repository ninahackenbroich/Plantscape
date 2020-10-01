class DashboardsController < ApplicationController
  def index
    @user = current_user
    @bookings = policy_scope(Booking)
    @upcoming_bookings = Booking.joins(:waterings).where("date > ?", Date.today.strftime("%Y-%m-%d")).where(user_id: @user).order("id asc").distinct
    @past_bookings = Booking.joins(:waterings).where("date < ?", Date.today.strftime("%Y-%m-%d")).where(user_id: @user).order("id asc").distinct
    @jungles = Jungle.where(user_id: @user)
    @jungle = current_user.jungles.first
    authorize @bookings
  end
end
