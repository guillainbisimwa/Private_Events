class EventsController < ApplicationController
  
    def index
        @events = Event.all
    end

    def new
        @event = Event.new
    end

    def create
        @event = Event.new(event_params)
		if @event.save
			flash[:notice] = "#{@event.title} event has been created!"
			redirect_to events_path
		else
			flash[:alert] = event.errors.full_messages
			redirect_to "new"
		end
    end

    def show
        @event = Event.find(params[:id].to_i)
    end

    private

    def event_params
      params.require(:event).permit(:title, :location, :datetime)
	end  
end
