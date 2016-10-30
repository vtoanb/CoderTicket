class EventsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  def index
    @events = if params[:search]
                Event.search(params)
              else
                Event.availabe
              end
  end

  def show
    @event = Event.availabe.find(params[:id])
  end

  def new
    @event = Event.new
    3.times { @event.ticket_types.build }
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      flash[:notice] = "event created successfully"
    else
      flash[:notice] = @event.errors.full_messages.to_sentence
      redirect_to new_event_path
    end
  end

  private
  def event_params
    params.require(:event).permit(
      :id,
      :starts_at,
      :ends_at,
      :venue_id,
      :category_id,
      :name,
      :hero_image_url,
      :extended_html_description,
      :starts_at,
      :ends_at,
      :published_at,
      ticket_types_attributes: [:id, :name, :price, :max_quantity])
  end
end
