require 'rails_helper'

RSpec.describe Venue, type: :model do
  describe "validate presence" do
    it { should validate_uniqueness_of(:name) }
    it { should validate_presence_of(:region) }
  end
end