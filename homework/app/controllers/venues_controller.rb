class VenuesController < ApplicationController

#get /venues
def index
	@venues = Venue.all

	respond_to do |format|
		format.html
	end

end

#get/venues/1
def show
	@venue = Venue.find(params[:id])

	respond_to do |format|
		format.html
	end
end

#get /venues/1/edit
def edit
	@venue = Venue.find(params[:id])

end

#post /venues/1
def update
	@venue = Venue.find(params[:id])
	respond_to do |format|
		if @venue.update_attributes(params[:venue])
			format.html { redirect_to @venue, notice: 'Venue was successfully updated.' }
		else
			format.html { render action: "edit" }
		end
	end
end

#get /venues/new
def new
	@venue = Venue.new

	respond_to do |format|
		format.html
	end
end

#post /venues
def create
	@venue = Venue.new(params[:venue])

	respond_to do |format|
		if @venue.save
			format.html { redirect_to @venue, notice: 'Venue was successfully created.' }
		else
			format.html { render action: "new" }
		end
	end
end

#delete
def destroy
	@venue = Venue.find(params[:id])
	@venue.destroy

	respond_to do |format|
		format.html {redirect_to venues_url}
	end
	
end

end