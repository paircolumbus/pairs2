[![Build Status](https://travis-ci.org/paircolumbus/pairs2.svg?branch=master)](https://travis-ci.org/paircolumbus/pairs2)

##Requirements for Pairs App

Details:
by Vasanth Pappu & Jay Bobo  
paircolumbus.org

####Goal:
To develop an automated solution to pairing meetup attendees of varying experience.

####Instructions:
* Must use Rails 5
* Must use a testing framework (ie. Minitest, RSpec, Cucumber)
* Use the front end framework of your choice (ie. html/vanillajs/angular/react)
* Must use Travis CI to track test coverage (https://docs.travis-ci.com)
* Fine tune our user stories, create your issues and establish a data model 
* Email us the link to your repo (info[dot]paircolumbus.org)
* Choose a license - http://choosealicense.com/licenses/gpl-3.0/
* Slack: paircolumbus.slack.com


####Minimum Requirements:
User sign up
* Multiple users should be able to sign in
* Should be able to identify as an organizer or an attendee
* Should be able to enter their email and experience level

Attendee login
* If a user has signed up before, they should be able to log in with their email and password
* Should be able to edit their experience level
* Should be able to view a history of the meetups they’ve attended
* Should be able to view a history of people they’ve paired with
* Should see a “come back later” message if they have navigated to an org’s page and pairing is not available.


Organizer login
* Should be able to enter their organization name and contact details
* Should be able to create a custom url (pairs.org/<custom-org>)
* Should be able to view all their attendees
* Should be able to start and end an event


Pairs display page
* Should display all users currently logged in
* Should display current pairs of users
* Should display current users who are not paired


Pairing
* A button should be able to pair users up randomly
* An admin user should be able to pair users up manually
* A button/s should be able to pair users up based on their experience level
   * Pair least experienced with most experienced
   * Pair users with similar experience levels
   * Pair users with matching interests
* A button should be able to unpair everyone
* A button should be able to save the current pairs
* The history of a user’s pairs should be recordable and displayable
* Both users should be able to enter notes about a pairing session
   * I.e. what they learned
   * I.e. code snippets


####Nice-to-have features:
Roadmapping
* A roadmap is a map of different things a user has learned over pairing
* A user should be able to edit their roadmap
* Two roadmaps should be comparable (via overlap, e.g.) so that a pair of users can see what they have common experience in


Event View
* Attendees and organizers should be able to view a list of all organizations providing pairing sessions in their area


Chat
* A user should be able to ask the group questions, like how to interpret a certain line of code, or where to get more help
* Another user that’s part of a different pair should be able to peer in and respond if they know something helpful


#Schema
![data_model](https://cloud.githubusercontent.com/assets/15950650/17644632/d8985f3c-6159-11e6-9906-22379f5edd26.png)

# Vagrant Instructions

Make sure you have Vagrant and VirtualBox installed. Next, download the repo and run the following command in the project root to provision your Vagrant machine:

```bash
vagrant up
```

After the provisioning finishes, you can access the project at [`localhost:3333`](http://localhost:3333). That's it!
