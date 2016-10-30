require "rails_helper"

RSpec.describe "routes for Orders", :type => :routing do
  it "does  route to orders" do
    expect(:get => "/index").not_to be_routable
  end
end