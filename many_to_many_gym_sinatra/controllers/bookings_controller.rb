require("sinatra")
require("sinatra/contrib/all")
require_relative("../models/booking.rb")
require_relative("../models/session.rb")
require_relative("../models/member.rb")
also_reload("../models/*")

# SKIP INDEX for now. Extension

# NEW  - from member - member prepopulated
get "/bookings/:id/new" do
  @this_member = Member.find(params[:id])
  @sessions = Session.sorted_by_course()
  @members = Member.all()
  @bookings = @this_member.bookings()
  erb(:"bookings/m_new")
end

# NEW - from session - session prepoulated

get "/bookings/:id/s_new" do
  @this_session = Session.find(params[:id])
  @sessions = Session.sorted_by_course()
  @members = Member.all()
  @bookings = @this_session.members()
  erb(:"bookings/s_new")
end


# SHOW
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
  @sessions = Session.sorted_by_course()
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
