# require("pry")
require_relative("../models/announcement.rb")

Announcement.delete_all()

notice1 = Announcement.new({"title" => "Couch to 5k", "info" => "In preparation for the city's annual fun run fundraiser, Muttfield Health will be starting several 'Couch to 5k' training groups - book your session now and see if we can't fail to put the fun right back into 'fun run fundraiser'!", "author" => "Michal", "photo" => "/images/couchto5k.jpg"})

notice2 = Announcement.new({"title" => "Pool Closed", "info" => "Due to a poo related incident the pool will be closed for cleaning Tuesday and Wednesday this week.  If you are booked into a paid swimming course during this time, we will add a class to the end of your booked block to make up for the class missed this week.  To our free swim swimmers - too bad, so sad.", "author" => "Bob", "photo" => "/images/pool_cleaning.jpg"})

notice3 = Announcement.new({"title" => "Weight Training Workshop", "info" => "This Thursday we'll be holding a weight training workshop in the main gym area where the weights are generally located.  Come on in and learn some of the basics to help prevent injury and see if you can actually pick heavy things up - and enjoy it!", "author" => "Kathy", "photo" => "/images/weights_workshop.jpg"})

notice4 = Announcement.new({"title" => "Cake Eating Contest!!", "info" => "To help you gear up for the busy holiday season, we're hosting our quarterly Cake Eating Contest in the cafe on Saturday, October 20th!  We can't wait to see you shove a bunch of cake right in your gob!!", "author" => "June", "photo" => "/images/cake_contest.jpg"})



notice1.save()
notice2.save()
notice3.save()
notice4.save()

# need to test the rest of the functionality. for now what I need, for friday is - create/save/read.

# member1.l_name = "Graves"
# member1.update()
# member2.f_name = "Caroline"
# member2.update()
#
#
#
# binding.pry
# p "let's get physical"
