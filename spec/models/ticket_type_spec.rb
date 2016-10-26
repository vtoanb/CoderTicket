require 'rails_helper'

RSpec.describe TicketType, type: :model do
  describe "validate something" do
    it { should validate_presence_of(:event) }
  end
end