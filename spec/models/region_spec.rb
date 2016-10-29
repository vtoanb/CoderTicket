# == Schema Information
#
# Table name: regions
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Region, type: :model do
  describe "validate inclusion" do
    it do should validate_inclusion_of(:name).
      in_array(['Ho Chi Minh', 'Ha Noi', 'Binh Thuan', 'Da Nang', 'Lam Dong'])
    end
    it { should validate_uniqueness_of(:name) }
  end
end
