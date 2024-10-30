# Tests-Scheduler

-   [Staff Test Scripts](#TestsScheduler-StaffTestScripts)
    -   [SCH001T Create a Scheduler Activity for Individual Bookings](#TestsScheduler-SCH001TCreateaSchedulerActivityforIndividualBookings)
    -   [SCH002T Create a Scheduler Activity for Group Bookings](#TestsScheduler-SCH002TCreateaSchedulerActivityforGroupBookings)
    -   [SCH003T Add a Single Slot](#TestsScheduler-SCH003TAddaSingleSlot)
    -   [SCH004T Add Repeated Slots](#TestsScheduler-SCH004TAddRepeatedSlots)
-   [Student Test Scripts](#TestsScheduler-StudentTestScripts)
    -   [SCH001S Book an Individual Slot](#TestsScheduler-SCH001SBookanIndividualSlot)
    -   [SCH002S Cancel an Individual Slot Booking](#TestsScheduler-SCH002SCancelanIndividualSlotBooking)
    -   [SCH003S Book a Group Slot](#TestsScheduler-SCH003SBookaGroupSlot)
    -   [SCH004S Cancel a Group Slot Booking](#TestsScheduler-SCH004SCancelaGroupSlotBooking)

### Staff Test Scripts

##### SCH001T Create a Scheduler Activity for Individual Bookings

1.  Login to tutor test account
2.  Go to test course
3.  Turn editing on
4.  Add Scheduler activity

##### SCH002T Create a Scheduler Activity for Group Bookings

1.  Login to tutor test account
2.  Go to test course
3.  Turn editing on
4.  Add Scheduler activity
5.  Ensure '**Booking in groups**' is set to '**Yes, for all groups**'
6.  When creating slots, ensure '**Maximum number of students per slot**' is set to the size of each group or disabled.

##### SCH003T Add a Single Slot

1.  Ensure you're logged in on a test account with tutor access to the test course
2.  Go to test course
3.  Open scheduler activity
4.  Click '**Add Slots**' and then '**Single Slot**'
5.  Fill in required information
6.  Scroll to bottom of page and click '**Save changes**'

##### SCH004T Add Repeated Slots

1.  Ensure you're logged in on a test account with tutor access to the test course
2.  Go to test course
3.  Open scheduler activity
4.  Click '**Add Slots**' and then '**Repeated Slots**'
5.  Fill in required information
6.  Scroll to bottom of page and click '**Save changes**'

### Student Test Scripts

##### SCH001S Book an Individual Slot

1.  Sign into student test account and access test course
2.  Open the individual scheduler activity
3.  Book a slot

##### SCH002S Cancel an Individual Slot Booking

1.  Sign into student test account and access test course
2.  Open scheduler activity
3.  Ensure a slot is booked
4.  Cancel an individual booked slot

##### SCH003S Book a Group Slot

1.  Sign into student test account and access test course
2.  Open scheduler activity
3.  Select correct group under '**Make appointments for:**'
4.  Book a slot

##### SCH004S Cancel a Group Slot Booking

1.  Sign into student test account and access test course
2.  Open the group scheduler activity
3.  Ensure a slot is booked
4.  Cancel a booked group slot

