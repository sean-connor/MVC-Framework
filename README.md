# A MVC FRAMEWORK

This is a lightweight MVC Framework inspired by the functionality of Ruby on Rails.

##Features
- Base Controller
- Router
- Flash Storage
- Session

#Installation

- $ git clone https://github.com/sean-connor/lightweight-mvc.git
- $ cd lightweight-mvc
- $ bundle install

#Router

Router parses params, adds new routes, creates methods for new routes and returns matching routes if available.

#ControllerBase

Handles the request and response, redirects URL as directed, renders view content based on route, and invokes actions.

#Flash Storage

Flash variables are available within instances of the ControllerBase.  Flash variables have getter/setter methods as well as a Flash@clear and a Flash.now.

#Session

Cookies are available within instances of the ControllerBase to be read and wrote.
