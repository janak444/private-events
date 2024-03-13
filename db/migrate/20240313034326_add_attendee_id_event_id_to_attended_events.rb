class AddAttendeeIdEventIdToAttendedEvents < ActiveRecord::Migration[7.1]
  def change
    add_column :attended_events, :attendee_id, :integer
    add_column :attended_events, :event_id, :integer
  end
end
