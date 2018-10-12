Extensions:
√- sort query results - alphabetically probably
√- gym announcements for home page
- diamond bullet points
√- move home button to the muttfield logo
√ prevent double booking
  - memeber id & session id -
    - take classes out that they're already booked in or classes that start at the same time.  could even look at classes that start in conflicting windows with the classes they have THAT'S TOTALLY AN EXTENSION
  - using member id and time and duration of class?

√ FIX SESSION SORTING!!!

√ go to member from session details

- wait list
  - will need a capacity set on the session - at the database level
  - will need that added to the class for Session
  - this will be fed into the query for the LIMIT.
  - this will also be used for the query offset.
  - wait list count
  - wait list will need to be added to the session details page.

- more member details(contact? age? ability? interests?, membership level)
√ keep member from being booked from the new_s page... pull them from the drop down.
- cancel operations (book a class, edit etc. - on the news and the edits)



an if statement on load to show or hid the waitlist-
check for waitlist length at the controller level and set true/false there, then open up
<div>
  <% if @show_add_new_coffee_button == true %>
    <form  action="/roasters/new" method="get">
      <input type="submit" name="" value="Add New Roaster">
    </form>
  <% end %>
</div>
