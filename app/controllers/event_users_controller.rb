class EventUsersController < ApplicationController
  before_action :require_user

  def new
    @eventusers = EventUser.new
  end

  def create
    @event = Event.find_by(id: params[:format].to_i)
    @eventuser = EventUser.new(event_id: @event.id, user_id: current_user.id)

    @event.attendees.each do |user|
      if current_user.id == user.user_id
        redirect_to event_path(@event), alert: 'You are already assisting this event!' and return
      end
    end

    if @eventuser.save
      flash[:notice] = "#{current_user.first_name} is assisting #{@event.description}!"
      redirect_to event_path(@event)
    else
      flash[:alert] = @eventuser.errors.full_messages
      redirect_to events_path
    end
  end
end
