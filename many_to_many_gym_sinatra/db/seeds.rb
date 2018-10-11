require("pry")
require_relative("../models/booking.rb")
require_relative("../models/member.rb")
require_relative("../models/course.rb")
require_relative("../models/session.rb")
require_relative("../models/announcement.rb")

Member.delete_all()
Course.delete_all()
Booking.delete_all()
Session.delete_all()

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
course4 = Course.new({"type" => "Mousercise"})
course5 = Course.new({"type" => "Absanity"})

course1.save()
course2.save()
course3.save()
course4.save()
course5.save()
course1.type = "Yoga"
course1.update()

session1 = Session.new({"course_id" => course1.id, "start_time" => "10:00", "capacity" => 5})
session2 = Session.new({"course_id" => course2.id, "start_time" => "11:00","capacity" => 8})
session3 = Session.new({"course_id" => course3.id, "start_time" => "14:00", "capacity" => 10})
session4 = Session.new({"course_id" => course2.id, "start_time" => "13:00", "capacity" => 4})
session5 = Session.new({"course_id" => course1.id, "start_time" => "06:00", "capacity" => 10})
session6 = Session.new({"course_id" => course1.id, "start_time" => "06:00", "capacity" => "9"})

session1.save()
session2.save()
session3.save()
session4.save()
session5.save()
session6.save()

session1.course_id = course2.id
session1.update()
session2.course_id = course1.id
session2.update()
binding.pry
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

Announcement.delete_all()

notice1 = Announcement.new({"title" => "Couch to 5k", "info" => "In preparation for the city's annual fun run fundraiser, Muttfield Health will be starting several 'Couch to 5k' training groups - book your session now and see if we can't fail to put the fun right back into 'fun run fundraiser'!", "author" => "Michal", "photo" => "/images/couchto5k.jpg"})

notice2 = Announcement.new({"title" => "Pool Closed", "info" => "Due to a poo related incident the pool will be closed for cleaning Tuesday and Wednesday this week.  If you are booked into a paid swimming course during this time, we will add a class to the end of your booked block to make up for the class missed this week.  To our free swim swimmers - too bad, so sad.", "author" => "Bob", "photo" => "/images/pool_cleaning.jpg"})

notice3 = Announcement.new({"title" => "Weight Training Workshop", "info" => "This Thursday we'll be holding a weight training workshop in the main gym area where the weights are generally located.  Come on in and learn some of the basics to help prevent injury and see if you can actually pick heavy things up - and enjoy it!", "author" => "Kathy", "photo" => "/images/weights_workshop.jpg"})

notice4 = Announcement.new({"title" => "Cake Eating Contest!!", "info" => "To help you gear up for the busy holiday season, we're hosting our quarterly Cake Eating Contest in the cafe on Saturday, October 20th!  We can't wait to see you shove a bunch of cake right in your gob!!", "author" => "June", "photo" => "/images/cake_contest.jpg"})



notice1.save()
notice2.save()
notice3.save()
notice4.save()


binding.pry
p "let's get physical"
