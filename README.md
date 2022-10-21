Original App Design Project - README Template
===

# GameNight

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)

## Overview
### Description
GameNight is a social networking app that allows board-game enthusiasts to connect with one another, schedule meetups, and grab information on board games.

### App Evaluation

- **Category:** Social Media
- **Mobile:** This app is primarily designed for mobile iOS users, but could work on a computer as well in the future. 
- **Story:** Analyzes user location and board game preferences, and connects them to users in their area or globally (depending on preferences of user). Users can then send messages to each other and schedule a meetup if desired.
- **Market:** Anyone can use this app, but it's made specifically for board-game players, or people that want to start playing. 
- **Habit:** Can be used as frequently as the user desires, depending on how often they'd like to meet new people and/or play board games.
- **Scope:** We'll first start out as an app, with potential for use with online gaming systems, such as Steam, Discord, or DndBeyond.

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* User sees a customized loading screen upon opening app
* User can create an account and log in
* User can create and delete a game session
* User can find open games
* User can see and edit their profile
* User can view other profiles

**Optional Nice-to-have Stories**

* User can send and receive messages with other users
* User must be 18+
* User history in profile
* Auto-save and auto-discard

### 2. Screen Archetypes

* Loading Screen
    * GameNight Title
    * ![](https://i.imgur.com/0uQEev9.png)
* Login Screen
   * User is given option to either login or sign up for an account
   * Upon closing the application, the user will stay logged in upon
    reopening
   * 2 Buttons for Forgot Password & Reset Password
* Scrolling Screen to Find Upcoming Meetups
    * TableView
    * TableView Cell - Name of Game, Host Author, Profile Picture.
    * Search bar on top, allows user to scroll through meetups
* Meetup Description Screen 
   * Allows user to view game picture, description, number of players, age range.
   * Place for user to comment
* Meetup Creation Screen
   * Allows user to create a meetup to play a certain game.
   * User can choose from a list of board games or input their own
* Scrolling Screen to find Board Games
   * User can scroll through a list of board games that we've pre-added to the app
* Board Game Description Screen
   * User can view information about board game
* User Scrolling Screen
   * Scrolling view of other users
* User Profile Screen
   * Allows user to view user profile picture and information
   * Edit Button, when clicked -> User Edit Profile Screen
* User Edit Profile Screen 
   * Allows user to upload a photo and fill in information about themselves
   * Button on bottom to save new edit information
* Message Screen (nice to have but not necessary)
   * Allows user to send and receive messages with another user, and return to the messages saved when they exit the chat.
   * Back4App has info on peer-to-peer chat!


### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Scrolling Screen to find Upcoming Meetups
* Profile
* Users
* Board Games
* Top Bar Navigation: Add Profile Picture, Settings on Top.. could base off of reddit's UI
* Search bar on top, nav options (arrow back)


**Flow Navigation** (Screen to Screen)

 * Login -> Show to Scrolling Screen
 * Events -> New Event + on top right will prompt you to create a new meetup
 * New Event -> Events, once finished creating
 * Users -> User profile screen


## Wireframes
[Add picture of your hand sketched wireframes in this section]
<img src="figma.png" width=600>

### [BONUS] Digital Wireframes & Mockups

### [BONUS] Interactive Prototype

## Schema 
<img src="schema.png" width=600>
### Models


### Networking
* Loading Screen
   * 
* Login Screen
   * 
* Scrolling Screen to Find Upcoming Meetups
   * 
* Meetup Description Screen 
   * 
* Meetup Creation Screen
   * 
* Scrolling Screen to find Board Games
   * 
* Board Game Description Screen
   * 
* User Scrolling Screen
   * 
* User Profile Screen
   * 
* User Edit Profile Screen 
   * 
* Message Screen (nice to have but not necessary)

- [Add list of network requests by screen ]
- [Create basic snippets for each Parse network request]
- [OPTIONAL: List endpoints if using existing API such as Yelp]
