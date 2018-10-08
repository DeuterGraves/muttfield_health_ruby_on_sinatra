require("sinatra")
require("sinatra/contrib/all")
require_relative("../models/member.rb")
also_reload("../models/*")

# INDEX
get "/members" do
  @members = Member.all()
  erb(:"members/index")
end

# NEW
get "/members/new" do
  erb(:"members/new")
end

# SHOW
get "/members/:id" do
  @member = Member.find(params[:id])
  @sessions = @member.sessions()
  erb(:"members/show")
end
# needs: delete, book a class for a member

# CREATE
post "/members/:id" do
  @member = Member.new(params)
  @member.save()
  redirect to("/members/#{@member.id}")
end


# EDIT
get "/members/:id/edit" do
  @member = Member.find(params[:id])
  erb(:"members/edit")
end


# DELETE
post "/members/:id/delete" do
  member = Member.find(params[:id])
  member.delete()
  redirect to "/members"
end

# UPDATE
post "/members/:id/edit" do
  @member = Member.new(params)
  @member.update()
  redirect to("/members/#{@member.id}")
end
