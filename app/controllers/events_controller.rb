# frozen_string_literal: true

class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def index
    @event = Event.all
    @past_event = Event.past_event
    @upcomming_event = Event.upcomming_event
  end

  def create
    @event = Event.new(event_params)
    @event.user_id = current_user.id

    if @event.save
      redirect_to events_path
    else
      render ''
    end
  end

  def show
    @event = Event.find(params[:id])
    if @event.attended_events.any?
    @attendees = @event.attendees
    end
  end

  private

  def event_params
    params.require(:event).permit(:event_name, :event_date)
  end
end
