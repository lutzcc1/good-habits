# Good Habits

This app enables the Telos Labs team to keep track of good habits and have a record of the days they're succeeding in completing any given task.

### Technologies used

* Ruby v2.6.6

* Ruby on Rails v6.0.3.3

* SQLite3

* Bootstrap (including jQuery and Popper.js)

### Business Requirements Fulfilled

* The app can create different activities (habits)

* Each activity provides the option to pick a date and mark the activity as completed on the selected date

* The app keeps track and provides records of: Which activities were completed on any given date. On which dates any specific activity was marked as completed

### Notes on bonus features and design decisions

Currently, the app allows users to log an activity during dates before the activity's creation and posterior to the present date. Ideally, this would not be allowed, but for demo purposes, it is now enabled so you can test logging activities on different dates without having to wait for a few days to pass so you have a wide range of days to log activities.

The app includes a “current streak” feature which lists the logged activity for every habit in the last 5 days. This feature takes into account the date the activity was created, if the activity is less than 5 days old, the feature will only show the currently available data.

If an activity is marked as complete on a date from before the date the activity was created, that record won't be taken into account for the current streak indicator.

### App design

I used 3 models for the creation of this app: habit, day and log.

I took this decision so that the app can retrieve information in a bidirectional way. The app can get which dates are attached to a specific activity, meaning which dates were this activity logged. It's also able to get activities logged on any specific day, this way enabling the user to check how productive any given day was. The log model worked as a join table between day and habit.

To keep the app simple and to try to stay in line with the 15 hrs time frame, I decided to currently not allow habits to be updated or deleted, the same goes with days, but in a fully-fledged app, the days would automatically be deleted when there were no habits linked to them, without the need of user interaction.

I also decided to make use of Bootstrap to create a good looking front end fast, without having to invest so much time in it so that I can focus more on the backend.










