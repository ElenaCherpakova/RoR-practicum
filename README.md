# Firefish Project - Travel app

This app can be used to plan for travels by building an itinerary. Firefish students will practice everything learned
from previous classes, and go beyond by integrating with a third-party API.

## CI statuses

| `main` | `dev-main` |
| ------ | ---------- |
| ![CI badge for main](https://github.com/ElenaCherpakova/RoR-practicum/actions/workflows/ci.yml/badge.svg?branch=main) | ![CI badge for dev-main](https://github.com/ElenaCherpakova/RoR-practicum/actions/workflows/ci.yml/badge.svg?branch=dev-main) |

## Kanban Board
https://github.com/users/ElenaCherpakova/projects/2/views/1

## MVP and Stretch goals
https://docs.google.com/document/d/11x6IiLobgSv9nSVWiJgmuIsjhN1IFt5iNeCNvN7XNz0/edit

## ERD or Schema
https://app.diagrams.net/#G1xfRhAcDjnsQEfdo20T75Njp4gRej5f-U#%7B%22pageId%22%3A%22cqxSL7ESD8t7_2KHPBbb%22%7D

## Setting Up Rails

https://classes.codethedream.org/course/ruby-on-rails/firefish?page=machine-setup

The article above has instructions for Mac, Ubuntu, and Windows. 

Note: We are using Ruby version 3.2.1, as specified in [.ruby-version](.ruby-version).
Rails is automatically installed when you run `bundle install` in the project directory.

## Setting up the Backend Repo on your machine

Clone the repo:

    git clone https://github.com/ElenaCherpakova/RoR-practicum.git

Make sure to create a dev-main branch

    git checkout -b dev-main origin/dev-main

### Setting up the master key for the development environment

https://docs.google.com/document/d/1hG8qxppgxV9JiCqtOenOON5H-VXuxm0aVOkYyNMY7Zc/edit

After following the steps in the document, run the following command to verify that there are no errors

    bin/rails credentials:show
