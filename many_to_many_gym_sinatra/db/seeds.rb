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
member4 = Member.new({"f_name" => "Rebecca", "l_name" => "Davenport"})
member5 = Member.new({"f_name" => "Bruce", "l_name" => "Forthwright"})
member6 = Member.new({"f_name" => "Rodney", "l_name" => "Carter"})
member7 = Member.new({"f_name" => "Mina", "l_name" => "LaDivina"})
member8 = Member.new({"f_name" => "Della", "l_name" => "Afeartycat"})
member9 = Member.new({"f_name" => "Rodney", "l_name" => "Carter"})
member10 = Member.new({"f_name" => "Susie", "l_name" => "Broadreach"})
member11 = Member.new({"f_name" => "David", "l_name" => "Sunderland"})
member12 = Member.new({"f_name" => "Sean", "l_name" => "Whithlewhite"})
member13 = Member.new({"f_name" => "Robert", "l_name" => "Jones"})
member14 = Member.new({"f_name" => "Terrance", "l_name" => "Northrup"})
member15 = Member.new({"f_name" => "Bea", "l_name" => "Whitty"})
member16 = Member.new({"f_name" => "Rhiannon", "l_name" => "Daviesbottom"})
member17 = Member.new({"f_name" => "David", "l_name" => "Antwhipple"})
member18 = Member.new({"f_name" => "Pippa", "l_name" => "Brighampton"})



member1.save()
member2.save()
member3.save()
member4.save()
member5.save()
member6.save()
member7.save()
member8.save()
member9.save()
member10.save()
member11.save()
member12.save()
member13.save()
member14.save()
member15.save()
member16.save()
member17.save()
member18.save()

member1.l_name = "Graves"
member1.update()
member2.f_name = "Caroline"
member2.update()

course1 = Course.new({"type" => "Yogurt"})
course2 = Course.new({"type" => "Swimming"})
course3 = Course.new({"type" => "Jazzercise"})
course4 = Course.new({"type" => "Mousercise"})
course5 = Course.new({"type" => "Absanity"})
course6 = Course.new({"type" => "Crossfit"})
course7 = Course.new({"type" => "Arial Silks"})
course8 = Course.new({"type" => "Spin"})

course1.save()
course2.save()
course3.save()
course4.save()
course5.save()
course6.save()
course7.save()
course8.save()
course1.type = "Yoga"
course1.update()

session1 = Session.new({"course_id" => course1.id, "start_time" => "07:00", "capacity" => 5})
session2 = Session.new({"course_id" => course2.id, "start_time" => "10:00","capacity" => 8})
session3 = Session.new({"course_id" => course3.id, "start_time" => "11:00", "capacity" => 6})
session4 = Session.new({"course_id" => course4.id, "start_time" => "11:00", "capacity" => 3})
session5 = Session.new({"course_id" => course5.id, "start_time" => "14:00", "capacity" => 6})
session6 = Session.new({"course_id" => course6.id, "start_time" => "17:00", "capacity" => "9"})
session7 = Session.new({"course_id" => course7.id, "start_time" => "11:00", "capacity" => 4})
session8 = Session.new({"course_id" => course8.id, "start_time" => "14:00", "capacity" => 10})
session9 = Session.new({"course_id" => course1.id, "start_time" => "15:00", "capacity" => "9"})
session10 = Session.new({"course_id" => course2.id, "start_time" => "18:00", "capacity" => 5})
session11 = Session.new({"course_id" => course3.id, "start_time" => "09:00","capacity" => 8})
session12 = Session.new({"course_id" => course4.id, "start_time" => "06:00", "capacity" => 6})
session13 = Session.new({"course_id" => course5.id, "start_time" => "05:00", "capacity" => 6})
session14 = Session.new({"course_id" => course6.id, "start_time" => "13:00", "capacity" => 5})
session15 = Session.new({"course_id" => course7.id, "start_time" => "16:00", "capacity" => "9"})
session16 = Session.new({"course_id" => course8.id, "start_time" => "17:00", "capacity" => 4})
session17 = Session.new({"course_id" => course8.id, "start_time" => "07:00", "capacity" => 8})

session1.save()
session2.save()
session3.save()
session4.save()
session5.save()
session6.save()
session7.save()
session8.save()
session9.save()
session10.save()
session11.save()
session12.save()
session13.save()
session14.save()
session15.save()
session16.save()
session17.save()

session1.course_id = course2.id
session1.update()
session2.course_id = course1.id
session2.update()
# binding.pry
# session3.start_time = "16:00"
# session3.update()

booking1 = Booking.new({"session_id" => session1.id, "member_id" => member1.id})
booking2 = Booking.new({"session_id" => session2.id, "member_id" => member2.id})
booking3 = Booking.new({"session_id" => session3.id, "member_id" => member3.id})
booking4 = Booking.new({"session_id" => session4.id, "member_id" => member4.id})
booking5 = Booking.new({"session_id" => session5.id, "member_id" => member5.id})
booking6 = Booking.new({"session_id" => session6.id, "member_id" => member6.id})
booking7 = Booking.new({"session_id" => session7.id, "member_id" => member7.id})
booking8 = Booking.new({"session_id" => session8.id, "member_id" => member8.id})
booking9 = Booking.new({"session_id" => session9.id, "member_id" => member9.id})
booking10 = Booking.new({"session_id" => session10.id, "member_id" => member10.id})

booking11 = Booking.new({"session_id" => session11.id, "member_id" => member11.id})
booking12 = Booking.new({"session_id" => session12.id, "member_id" => member12.id})
booking13 = Booking.new({"session_id" => session13.id, "member_id" => member13.id})
booking14 = Booking.new({"session_id" => session14.id, "member_id" => member14.id})
booking15 = Booking.new({"session_id" => session15.id, "member_id" => member15.id})
booking16 = Booking.new({"session_id" => session16.id, "member_id" => member16.id})
booking17 = Booking.new({"session_id" => session17.id, "member_id" => member17.id})
booking18 = Booking.new({"session_id" => session1.id, "member_id" => member18.id})

booking1.save()
booking2.save()
booking3.save()
booking4.save()
booking5.save()
booking6.save()
booking7.save()
booking8.save()
booking9.save()
booking10.save()
booking11.save()
booking12.save()
booking13.save()
booking14.save()
booking15.save()
booking16.save()
booking17.save()
booking18.save()

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
