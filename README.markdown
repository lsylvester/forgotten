Task
====
Consider the design of an appointment reminder service that would use email and SMS technologies.   

The system must record appointment reminders for staff.

Staff are provided a unique url that displays the staff details (name, payroll number, phone and email) and their list of reminders. Each staff member can setup as many reminders as they like, recording the datetime and a reminder message. 

Staff can look at reminders that have already been sent or up-coming reminders.  Please design and implement a single UI page rails solution that incorporates the above requirements.

The solution needs to record data into a database but does not need to implement security, email or SMS functionality.


To get started
--------------

run @rake gems:install@ to install required gems.

run @rake db:migrate@ to migrate the database.

run @rake demo:load@ to load some sample data.

Then run @script/server@ and go to http://0.0.0.0:3000