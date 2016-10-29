# == Schema Information
#
# Table name: lines
#
#  id             :integer          not null, primary key
#  quantity       :integer
#  ticket_type_id :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  order_id       :integer
#

class Line < ActiveRecord::Base
  belongs_to :ticket_type
end
