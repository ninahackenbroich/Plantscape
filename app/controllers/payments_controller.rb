class PaymentsController < ApplicationController
  after_action :verify_authorized, only: :new, unless: :skip_pundit?
  def new
    @order = current_user.orders.where(state: 'pending').find(params[:order_id])
  end

private
  def skip_pundit?
    true
  end
end
