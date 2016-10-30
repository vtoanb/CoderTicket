class VenuesController < ApplicationController
  def new
    @venue = Venue.new
  end

  def create
    @venue = Venue.new(venue_params)
    if @venue.save
      flash[:success] = "Venue created successfully"
    else
      flash[:notice] = @venue.errors.full_messages.to_sentence
      redirect_to root_path
    end
  end

  private
  def venue_params
    params.require(:venue).permit(
      :name,
      :region,
      :full_address
      )
  end
end
