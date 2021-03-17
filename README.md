# Full (Stack!) House

<img src="https://img.shields.io/badge/ruby-v2.6.6-red" title="ruby-badge"> <img src="https://img.shields.io/badge/rails-6.1.3-yellow" title="ruby-badge">

[Live Link](https://immense-reaches-91193.herokuapp.com/)

![Full (stack!) House](https://user-images.githubusercontent.com/37354322/111405914-ecbda500-8696-11eb-900d-456d8baec2f0.png)

## Relevant Links
* [My theme song for this technical challenge: take a listen!](https://www.youtube.com/watch?v=9wrmm-PL36o)
* [Full (Stack!) House Production Link](https://immense-reaches-91193.herokuapp.com/)
* [Trello Board](https://trello.com/b/r1uKJ90v/altvia-technical-challenge)
* [Card Shuffler Script](https://github.com/DanielMulitauopele/altvia_card_shuffler)
* [Cards On Deck Gem](https://rubygems.org/gems/cards_on_deck)
* [Cards On Deck Repository](https://github.com/DanielMulitauopele/CardsOnDeck)

## Demo 

![Full Stack House Small](https://user-images.githubusercontent.com/37354322/111409597-e03c4b00-869c-11eb-8b7c-01ee787e52e3.gif)

## Table of Contents

* [Description/Purpose](#descriptionpurpose)
* [Prompt](#prompt)
* [Requirements](#system-requirements)
* [Setup](#setup)
* [Testing](#testing)
* [Implementation](#implementation)
* [Dependencies](#dependencies)
* [Contributors](#contributors)

## Description/Purpose

This Ruby on Rails application was created as a submission for the technical challenge for Altvia's Ruby Software Developer position. My initial approach was to create a small object-oriented Ruby program, with Card and Deck classes. I developed this small program first (can be found [here](https://github.com/DanielMulitauopele/altvia_card_shuffler)), but I realized it was not terribly satisfying to see a deck of cards return as 'shuffled' from the command line. As a result, I decided to build something a little more visual, and by refactoring the code I had already written into a custom gem (found [here](https://github.com/DanielMulitauopele/CardsOnDeck)), I was able to import that Card and Deck logic into a brand new Rails 6 application. This is the end result. While there are many areas that can be improved, I believe that my choice to pivot and use a supporting gem to built out this app was a good one. I hope you all agree!

## Prompt

Please design and implement a card shuffler using the language of your choice.

Requirements: 

* Implementation should be done in a code repository that can be pulled down by an Altvia engineer
* Readme provided on how to run your project
* Showcase your skill set

## System Requirements

This application requires several technologies to be installed to your local
machine. The following are required:

1. [Ruby on Rails 6.1.3](https://rubyonrails.org/)
2. [PostgreSQL](https://www.postgresql.org/)
3. [Ruby 2.6.6](https://www.ruby-lang.org/en/)

## Setup

To run this application locally, take the following steps:

* Clone this repository down into a local directory of your choice.
* Navigate(cd) into FullStackHouse
* Run bundle
* Run bundle update
* Run rake db:{drop,create,migrate,seed}
* Run rspec to run the test suite
* To verify test coverage, in the command line, run open coverage/index.html
* Run rails s to open a local server
* Navigate to localhost:3000 in your browser

## Dependencies

**Production**

* [Bootstrap 5](https://getbootstrap.com/)
* [Cards on Deck](https://github.com/DanielMulitauopele/CardsOnDeck)
* [Heroku CLI](https://devcenter.heroku.com/articles/heroku-cli)

**Development / Test**

* [Rspec](https://rspec.info/)
* [Capybara](https://github.com/teamcapybara/capybara)
* [Launchy](https://github.com/copiousfreetime/launchy)
* [Pry](https://github.com/pry/pry)
* [Shoulda-Matchers](https://github.com/thoughtbot/shoulda-matchers)
* [Active Designer](https://github.com/thomschlereth/active_designer)
* [SimpleCov](https://github.com/simplecov-ruby/simplecov)

## Contributors

* [Daniel Mulitauopele](https://github.com/DanielMulitauopele)

<img width=auto alt="Screen Shot 2021-03-16 at 9 51 10 PM" src="https://user-images.githubusercontent.com/37354322/111412323-d2d58f80-86a1-11eb-8081-3d3ed355d4a9.png">
