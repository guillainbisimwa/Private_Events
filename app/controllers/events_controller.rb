class EventsController < ApplicationController

  before_action :require_user, except: [:index, :show]
  
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.creator = current_user.id

    if @event.save
      flash[:notice] = "#{@event.title} event has been created!"
      redirect_to events_path
    else
      flash[:alert] = @event.errors.full_messages
      redirect_to "new"
    end
  end

  def show
    if Event.find_by(id: params[:id].to_i).nil?
      redirect_to events_path
    else
      @event = Event.find(params[:id].to_i)
      @user = User.find(@event.creator)
    end
  end

  private

  def event_params
    params.require(:event).permit(:description)
  end

end
