class AttendedEventsController < ApplicationController
  def create
    if user_signed_in?
      @attended_events = AttendedEvent.new(attendee_id: current_user.id, event_id: params[:id])
      if @attended_events.save
        redirect_to event_path(@attended_events)
      end
    else
      render ''
    end
  end
end
