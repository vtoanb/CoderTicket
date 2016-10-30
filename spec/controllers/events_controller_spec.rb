require 'rails_helper'

RSpec.describe EventsController, type: :controller do
  include Devise::Test::ControllerHelpers

  def setup
    @request.env["devise.mapping"] = Devise.mappings[:user]
    sign_in FactoryGirl.create(:user)
  end

  def login_user
    @request.env["devise.mapping"] = Devise.mappings[:user]
    user = FactoryGirl.create(:user)
    user.confirm # or set a confirmed_at inside the factory. Only necessary if you are using the "confirmable" module
    sign_in user
  end

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
      Timecop.freeze(Date.today - 1.days) do
        get :index
        expect(assigns(:events)).not_to include(event)
      end
    end
  end
end
