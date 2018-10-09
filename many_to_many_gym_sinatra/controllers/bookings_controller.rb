require("sinatra")
require("sinatra/contrib/all")
require_relative("../models/booking.rb")
require_relative("../models/session.rb")
require_relative("../models/member.rb")
also_reload("../models/*")

# SKIP INDEX for now. Extension

# NEW  - from member - member prepopulated
get "/bookings/:id/new" do
  #@courses = Course.all()
  # pass in the exact member!!!
  @this_member = Member.find(params[:id])
  @sessions = Session.all()
  @members = Member.all()
  erb(:"bookings/m_new")
end

# NEW - from session - session prepoulated

get "/bookings/:id/s_new" do
  #@courses = Course.all()
  # pass in the exact member!!!
  @this_session = Session.find(params[:id])
  @sessions = Session.all()
  @members = Member.all()
  erb(:"bookings/s_new")
end


# SHOW - this will be a confirmation page will need to link somewhere from here?
get "/bookings/:id" do
  @booking = Booking.find(params[:id])
  erb(:"/bookings/show")
end


# CREATE - same for both new
post "/bookings/:id" do
  @booking = Booking.new(params)
  @booking.save()
  redirect to("/bookings/#{@booking.id}")
end

# Edit
get "/bookings/:id/edit" do
  #@courses = Course.all()
  @sessions = Session.all()
  @members = Member.all()
  @booking = Booking.find(params[:id])
  erb(:"bookings/edit")
end

# DELETE
post "/bookings/:id/delete" do
  @booking = Booking.find(params[:id])
  @booking.delete()
  erb(:"bookings/destroy")
end

# UPDATE
post "/bookings/:id/edit" do
  @booking = Booking.new(params)
  @booking.update()
  redirect to("/bookings/#{@booking.id}")
end
