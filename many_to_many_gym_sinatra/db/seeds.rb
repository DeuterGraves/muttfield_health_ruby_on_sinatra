require("pry")
require_relative("../models/booking.rb")
require_relative("../models/member.rb")
require_relative("../models/course.rb")
require_relative("../models/session.rb")

Member.delete_all()
Course.delete_all()
Member.delete_all()
Member.delete_all()

member1 = Member.new({"f_name" => "Jamie", "l_name" => "Gains"})

member2 = Member.new({"f_name" => "Conline", "l_name" => "Graves"})

member3 = Member.new({"f_name" => "Truffles", "l_name" => "Deutermann"})

member4 = Member.new({"f_name" => "Rebecca", "l_name" => "Lane"})

member5 = Member.new({"f_name" => "Bruce", "l_name" => "Forthwright"})

member6 = Member.new({"f_name" => "Rodney", "l_name" => "Carter"})



member1.save()
member2.save()
member3.save()
member4.save()
member5.save()
member6.save()

member1.l_name = "Graves"
member1.update()
member2.f_name = "Caroline"
member2.update()

course1 = Course.new({"type" => "Yogurt"})
course2 = Course.new({"type" => "Swimming"})
course3 = Course.new({"type" => "Jazzercise"})

course1.save()
course2.save()
course3.save()
course1.type = "Yoga"
course1.update()

session1 = Session.new({"course_id" => course1.id, "start_time" => "10:00"})
session2 = Session.new({"course_id" => course2.id, "start_time" => "11:00"})
session3 = Session.new({"course_id" => course3.id, "start_time" => "14:00"})
session4 = Session.new({"course_id" => course2.id, "start_time" => "13:00"})
session5 = Session.new({"course_id" => course1.id, "start_time" => "-6:00"})

session1.save()
session2.save()
session3.save()
session4.save()
session5.save()

session1.course_id = course2.id
session1.update()
session2.course_id = course1.id
session2.update()
session3.start_time = "16:00"
session3.update()

booking1 = Booking.new({"session_id" => session1.id, "member_id" => member1.id})
booking2 = Booking.new({"session_id" => session2.id, "member_id" => member2.id})
booking3 = Booking.new({"session_id" => session3.id, "member_id" => member3.id})
booking4 = Booking.new({"session_id" => session4.id, "member_id" => member4.id})
booking5 = Booking.new({"session_id" => session5.id, "member_id" => member5.id})
booking6 = Booking.new({"session_id" => session1.id, "member_id" => member6.id})
booking7 = Booking.new({"session_id" => session2.id, "member_id" => member1.id})
booking8 = Booking.new({"session_id" => session4.id, "member_id" => member2.id})
booking9 = Booking.new({"session_id" => session4.id, "member_id" => member3.id})

booking1.save()
booking2.save()
booking3.save()
booking4.save()
booking5.save()
booking6.save()
booking7.save()
booking8.save()
booking9.save()

binding.pry
p "let's get physical"
