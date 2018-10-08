require("sinatra")
require("sinatra/contrib/all")
require_relative("controllers/members_controller")
require_relative("controllers/courses_controller")
require_relative("controllers/sessions_controller")
require_relative("controllers/bookings_controller")
# also_reload("controllers/*")

get "/" do
  erb (:index)
end
