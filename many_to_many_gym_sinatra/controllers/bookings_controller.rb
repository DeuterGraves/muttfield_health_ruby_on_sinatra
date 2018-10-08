require("sinatra")
require("sinatra/contrib/all")
require_relative("../models/booking.rb")
require_relative("../models/session.rb")
require_relative("../models/member.rb")
also_reload("../models/*")

# SKIP INDEX for now.

# NEW  - from member - member prepopulated

# NEW - from session - session prepoulated

# SHOW - this will be a confirmation page will need to link somewhere from here?
get "/bookings/:id" do
  @booking = Booking.find(params[:id])
  erb(:"/bookings/show")
end


# CREATE - same for both new

# Edit
get "/bookings/:id/edit" do
  @booking = Booking.find(params[:id])
  erb(:"bookings/edit")
end

# DELETE

# UPDATE
