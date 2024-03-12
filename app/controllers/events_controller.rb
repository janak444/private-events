class EventsController < ApplicationController
  def new
    @event = Event.new
  end
  
  def index
    @event = Event.all
  end

  def create
    @event = Event.new(event_params)
    @event.user_id = current_user.id

    if @event.save
      redirect_to event_path
    else
      render ""
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  private
  def event_params
    params.require(:event).permit(:event_name, :event_date)
  end
end
