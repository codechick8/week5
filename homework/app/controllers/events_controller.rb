class EventsController < ApplicationController

#get events
def index
	@events = Event.all
	
	respond_to do|format|
		format.html
	end
end

#get events/1
def show
	@event = Event.find(params[:id])
	respond_to do |format|
		format.html
	end
end

#post /events
def create
	@event = Event.new(params[:event])

	respond_to do |format|
		if @event.save
			format.html {redirect_to @event, notice: 'Event was successfully created.' }
		else
			format.html {render action: "new" }
		end
	end
end


#get /events/new
def new
	@event = Event.new
	respond_to do |format|
		format.html # <-- new.html.erb
	end
end

#get /events/1/edit
def edit
	@event = Event.find(params[:id])
end

# post /event/1
def update
	@event = Event.find(params[:id])

	respond_to do |format|
		if @event.update_attributes(params[:event])
			format.html {redirect_to @event, notice: 'Event was successfully updated.' }
		else
			format.html {render action: "edit"}			
		end
	end
end

#delete /events/1
def destroy
	@event = Event.find(params[:id])
	@event.destroy

	respond_to do |format|
		format.html { redirect_to events_url }
	end
end

end