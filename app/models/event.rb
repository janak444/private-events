class Event < ApplicationRecord
  has_many :attended_events, class_name: 'AttendedEvent'
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  has_many :attendees, through: :attended_events

  # def self.past_event
  #   Event.where("event_date > 'Date.today'")
  # end

  # def self.upcomming_event
  #   Event.where("event_date < 'Date.today'")
  # end

  scope :past_event, -> { where("event_date > 'Date.today'")}
  scope :upcomming_event, -> { where("event_date < 'Date.today'")}
end
