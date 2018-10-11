require("pry")
require_relative("./models/member")
require_relative("./models/booking")
require_relative("./models/course")
require_relative("./models/session")
require_relative("./models/announcement")

p member1= Member.find(163)
p " "
p exclude = member1.exclude_sessions()
p " "
p avail = member1.available_sessions(exclude)


binding.pry
p "what's up doc?"
