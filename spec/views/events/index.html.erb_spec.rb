require "spec_helper"

RSpec.describe "Events/index" do
  let (:category) { create(:category) }
  let (:venue) { create(:venue) }
  let (:event) { create(category: category, venue: venue, extended_html_description: "haha") }

  it "displays all the Events" do
    render

    expect(rendered).to match(/haha/)
    # expect(rendered).to match /dicer/
  end
end