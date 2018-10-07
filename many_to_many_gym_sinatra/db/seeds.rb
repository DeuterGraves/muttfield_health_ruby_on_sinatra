require("pry")
require_relative("../models/booking.rb")
require_relative("../models/member.rb")
require_relative("../models/course.rb")
require_relative("../models/session.rb")

Member.delete_all()

member1 = Member.new({"f_name" => "Jamie", "l_name" => "Gains"})

member2 = Member.new({"f_name" => "Conline", "l_name" => "Graves"})

member3 = Member.new({"f_name" => "Truffles", "l_name" => "Deutermann"})

member1.save()
member2.save()
member3.save()
