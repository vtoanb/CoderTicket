class TicketsController < ApplicationController
  def new
    @event = Event.find(params[:event_id])
    # @user = User.find(params[:user_id])
    
  end
end
