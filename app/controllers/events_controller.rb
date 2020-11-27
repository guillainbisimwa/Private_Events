class EventsController < ApplicationController
  before_action :require_user, except: %i[index show]

  def index
    @past_events = Event.previous
    @upcoming_events = Event.upcoming
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.build(event_params)

    if @event.save
      flash[:notice] = "#{@event.title} event has been created!"
      redirect_to events_path
    else
      flash.now[:alert] = @event.errors.full_messages
      redirect_to new_event_path
    end
  end

  def show
    if Event.find_by(id: params[:id].to_i).nil?
      redirect_to events_path
    else
      @event = Event.find(params[:id].to_i)
      @attendees_id = @event.attendee.all
    end
  end

  private

  def event_params
    params.require(:event).permit(:description, :datetime)
  end
end
