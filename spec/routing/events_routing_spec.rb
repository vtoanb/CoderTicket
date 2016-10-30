require "rails_helper"

RSpec.describe "routes for Widgets", :type => :routing do
  it "does  route to events" do
    expect(:get => "/events").to be_routable
  end

  it " route to events#new"  do
    expect(get: "/events/new").to be_routable
  end
end