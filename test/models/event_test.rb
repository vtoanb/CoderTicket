# == Schema Information
#
# Table name: events
#
#  id                        :integer          not null, primary key
#  starts_at                 :datetime
#  ends_at                   :datetime
#  venue_id                  :integer
#  hero_image_url            :string
#  extended_html_description :text
#  category_id               :integer
#  name                      :string
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#  published_at              :datetime
#

require 'test_helper'

class EventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
