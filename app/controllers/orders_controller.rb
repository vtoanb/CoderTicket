class OrdersController < ApplicationController
  def new
    @user = User.find(order_params[:user_id])
  end

  def create
    # @user = current_user
    @order = current_user.current_order
    @event = Event.find(params[:event_id])
    params[:lines].each do |t|
      id = t.second[:id]
      quantity = t.second[:quantity]
      new_line = @order.lines.new
      new_line.ticket_type = TicketType.find(id)
      new_line.quantity = quantity
      if new_line.save && @order.save
        puts "save success"
      end
    end
  end

  def show
    # @user = current_user
    @order = current_user.orders.find(params[:id])
    @purchase = @order.finish
  end

  def index
    if params[:checkout] == 'true'
      current_user.checkout
    end
    @order = current_user.orders.where(finish: true)
  end

  private

  def order_params
  end

  def user_params
  end
end
