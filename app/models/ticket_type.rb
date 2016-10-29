# == Schema Information
#
# Table name: ticket_types
#
#  id           :integer          not null, primary key
#  event_id     :integer
#  price        :integer
#  name         :string
#  max_quantity :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class TicketType < ActiveRecord::Base
  validates :event, presence: true
  validates :name, presence: true
  validates :price, presence: true
  belongs_to :event
end
