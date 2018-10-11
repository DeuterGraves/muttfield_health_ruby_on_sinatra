require("pry")
require_relative("./models/member")
require_relative("./models/booking")
require_relative("./models/course")
require_relative("./models/session")
require_relative("./models/announcement")


notice1 = Announcement.new({"title" => "Couch to 5k", "info" => "In preparation for the city's annual fun run fundraiser, Muttfield Health will be starting several 'Couch to 5k' training groups - book your session now and see if we can't fail to put the fun right back into 'fun run fundraiser'!", "author" => "Michal", "photo" => "/images/couchto5k.jpg"})

notice1.save()


binding.pry
p "what's up doc?"
