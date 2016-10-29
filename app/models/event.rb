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
#

class Event < ActiveRecord::Base
  belongs_to :venue
  belongs_to :category
  has_many :ticket_types
  accepts_nested_attributes_for :ticket_types

  validates_presence_of :extended_html_description,
                        :venue, :category, :starts_at
  validates_uniqueness_of :name, uniqueness: { scope: [:venue, :starts_at] }

  def self.availabe
    Event.where('starts_at < ?', Time.now).where('ends_at > ?', Time.now)
  end

  def self.search(params)
    Event.availabe.where('name ILIKE ?', '%#{params[:search]}%')
  end
end
