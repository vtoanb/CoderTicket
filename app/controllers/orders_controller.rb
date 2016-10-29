class OrdersController < ApplicationController
  def new
    @user = User.find(order_params[:user_id])
  end

  def create
  end

  private

  def order_params
    params.require(:order).permit(:user_id, { lines_attributes: [:ticket_types, :quantity] })
  end

  def user_params
  end
end
