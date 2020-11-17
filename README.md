![](https://img.shields.io/badge/Microverse-blueviolet)

# Private Events

The Microverse Associations project for Ruby on Rails module that consists of creating an application named Private Events and that behaves similar to Eventbrite, which allows users to create events and then manage user signups. Users can create events and send invitations and parties (sound familiar?). Events take place at a specific date and at a location. A user can create events. A user can attend many events. An event can be attended by many users. The main goal is to put in practice the main concepts of Associations in rails.

## Built With
- Ruby programming language
- Rails framework
- HTML
- CSS
- Bootstrap
- The MVC design patterns.

### Rails gems:
- capybara
- rspec-rails
- rails-controller-testing
- wdm

### Additional gems:
- rubocop

### Documentations
- https://www.theodinproject.com/courses/ruby-on-rails/lessons/associations
- https://relishapp.com/rspec/rspec-rails/v/4-0/docs
- https://madeintandem.com/blog/setting-up-rspec-and-capybara-in-rails-5-for-testing/
- https://www.codewithjason.com/rails-testing-hello-world-using-rspec-capybara/

Readme file for the following gems:
- https://github.com/rspec/rspec-rails/
- https://github.com/teamcapybara/capybara


## Authors
### Author
- 👤GitHub: [Jose Abel Ramirez](https://github.com/jose-Abel)
- Linkedin: [Jose Abel Ramirez Frontany](https://www.linkedin.com/in/jose-abel-ramirez-frontany-7674a842/)

### Author
- 👤GitHub: [Guillain Bisimwa](https://github.com/guillainbisimwa)
- Linkedin: [Guillain Bisimwa](https://www.linkedin.com/in/guillain-bisimwa-8a8b7a7b/)

## Getting Started
Can download this code with any method and over the terminal with the commands:

- git clone https://github.com/guillainbisimwa/Private_Events.git
- In order to test the relationship between User, Events models open the Rails console from the terminal with the command
- rails console (or it could be "rails c")

## Run linters
For the linters, this tests runs once you make a PR, if you have it in the respective folder. In order to have this tests, after cloning this project:

 - cd Private_Events
- From the root of this project create the folders .github/workflows
- Add a copy of [.github/workflows/tests.yml](https://github.com/microverseinc/linters-config/blob/master/ruby/.github/workflows/tests.yml) to the .github/workflows

## Run Rspecs
The commands to run rspecs tests in the Linux, Mac terminal or Windows cmd are:

- After cloning this project with the command git clone https://github.com/guillainbisimwa/Private_Events.git
- cd Private_Events
- rspec

To run only the model tests:

rspec spec/models

To run only the controller tests:

rspec spec/controllers

To run only the integration tests:

rspec spec/integration

## Run Rubocop tests
The instructions to setup this tests are at this repository: [Rubocop instructions](https://github.com/microverseinc/linters-config/tree/master/ruby)

To download rubocop and run the tests on your local environment, this are the commands to type in the Linux, Mac terminal or Windows cmd:
- gem 'rubocop'
- cd Private_Events
- copy this file [.rubocop.yml](https://github.com/microverseinc/linters-config/blob/master/ruby/.rubocop.yml) in the root directory of the project
- type in the terminal 'rubocop'


### Acknowledgments
Appreciate the Ruby Team, and a special acknowledgment to Microverse for pushing us further to increase our knowledge.


## 📝 License
This project is MIT licensed.
