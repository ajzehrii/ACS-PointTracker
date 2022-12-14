# README

## Introduction ##

Application is for the American Chemical Society Texas A&M chaper to log member hours and to assist in keeping track of points. The application plans to provide basic public pages for visitors along with private pages for members only. In those pages will be a custom calander with upcoming events and will allow memebers to easily check in to those events to keep track of attendance. 

## Requirements ##

This code has been run and tested on:

* Ruby - 3.0.2p107
* PostgreSQL - 13.3 
* Nodejs - v16.9.1


## External Deps  ##

* Docker - Download latest version at https://www.docker.com/products/docker-desktop
* Heroku CLI - Download latest version at https://devcenter.heroku.com/articles/heroku-cli
* Git - Downloat latest version at https://git-scm.com/book/en/v2/Getting-Started-Installing-Git

## Installation ##

Download this code repository by using git:

 `git clone https://github.com/ajzehrii/ACS-PointTracker`


## Tests ##

An RSpec test suite is available and can be ran using:

  `rspec spec/`

## Execute Code ##

Run the following code in Powershell if using windows or the terminal using Linux/Mac

  `cd ACS-PointTracker`

  `docker run --rm -it --volume "$(pwd):/rails_app" -e DATABASE_USER=test_app -e DATABASE_PASSWORD=test_password -p 3000:3000 dmartinez05/ruby_rails_postgresql:latest`

  `cd ACS-PointTracker`

Install the app

  `bundle install && rails webpacker:install && rails db:create && rails db:migrate && rails db:seed`

Run the app
  `rails server --binding=0.0.0.0`

The application can be seen using a browser and navigating to http://localhost:3000/

## Deployment ##

** Heroku has automatic deploys linked to this github. 
* Test app (linked to test branch) - https://acs--testbranch.herokuapp.com/
* Stagin app (linked to main branch) - https://acs-stage-test-app.herokuapp.com/
* Main app (Customer ownership) - https://acs-pointtracker.herokuapp.com/


## CI/CD ##

By utilizing Github Actions and its CI/CD pipelines, we are able to quick check if our code builds successfully and can run in the pipeline. 
By using this we were able to test different  additions of code before merging to other members code. 
We where also able to create different staging apps in the Heroku pipeline to further test individual updates. 

## Support ##

Admins looking for support should first look at the application help page.
Users looking for help seek out assistance from the customer.
