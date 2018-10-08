require("sinatra")
require("sinatra/contrib/all")
require_relative("../models/course.rb")
require_relative("../models/session.rb")
also_reload("../models/*")

# INDEX
get "/sessions" do
  @sessions = Session.all()
  erb(:"sessions/index")
end

# NEW
get "/sessions/new" do
  @courses = Course.all()
  erb(:"sessions/new")
end

# SHOW
get "/sessions/:id" do
  @session = Session.find(params[:id])
  @members = @session.members()
  erb(:"sessions/show")
end
# need update/delete booking

# CREATE
post "/sessions/:id" do
  @session = Session.new(params)
  @session.save()
  redirect to("/sessions/#{@session.id}")
end
