require 'rails_helper'

RSpec.describe EventsController, type: :controller do
  let(:region) { create(:region) }
  let(:venue) { create(:venue, region: region) }
  let(:category) { create(:category) }
  let(:event) { create(:event, category: category, venue: venue) }

  describe "return successful status and right events" do
    it "should not return event" do
      Timecop.freeze(Date.today + 10) do
        get :index
        # stupid mistake
        expect(assigns(:events)).not_to include(event)
      end
    end

    it "should return event" do
      Timecop.freeze(Date.today + 1) do
        get :index
        expect(assigns(:events)).to include(event)
      end
    end
  end
end
