class AttendedEventsController < ApplicationController
  def create
    debugger
    if user_signed_in?
      @attended_events = AttendedEvent.new(attendee_id: current_user.id, event_id: params[:id])
      debugger
      if @attended_events.save
        
      end
    else
      render ""
    end
  end
end
