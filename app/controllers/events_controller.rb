class EventsController < ApplicationController
  def index
    @events = Event.availabe
  end

  def show
    @event = Event.find(params[:id])
  end
end
