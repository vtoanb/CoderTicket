require 'rails_helper'

RSpec.describe Event, type: :model do
  describe "validate presence foreign talbe" do
    it { should validate_presence_of(:venue) }
    it { should validate_presence_of(:category) }
  end

  describe "validate presence of fields" do
    it { should validate_presence_of(:starts_at) }
    it { should validate_presence_of(:extended_html_description) }
  end

  describe "validate has many" do
    # it { should have_many(:ticket_types) }
  end

  describe "validate uniqueness of couple fields" do
    it { should validate_uniqueness_of(:name) }
  end
end