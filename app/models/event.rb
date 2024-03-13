class Event < ApplicationRecord
    has_many :attended_events, class_name: "AttendedEvent"
    belongs_to :user, class_name: "User", foreign_key: "user_id"
    has_many :attendees, through: :attended_events
end
