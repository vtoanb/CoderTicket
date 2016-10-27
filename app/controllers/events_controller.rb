class EventsController < ApplicationController
  def index
    @events = if params[:search]
                Event.search(params)
              else
                Event.availabe
              end
  end

  def show
    @event = Event.find(params[:id])
  end
end
