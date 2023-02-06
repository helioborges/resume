# README
Example App: https://resume-w4vt.onrender.com/ (it takes a few minutes for the host to start the app).

Everytime it starts, it reseeds the database, so you can change anything you want there.

# RESUME APP

Basic Resume App with Devise/Login.

simple_form with nested attributes.

bootstrap and fontawesome.

active_storage (local) for uploads.

It's configured to work with 'render.com' deployment.

Few tests already done, more incoming. 


# Requirements: 

* Ruby 3.1.1

* Rails 7.0.3

* PostgreSQL

# Installation:
Clone 
```
bundle install
rails active_storage:install
rake db:migrate 
rake db:seed 
rails server
```

* Check seeds.rb to select what stuff you want to initially seed.


* You can also change the credentials by typing:  
```
rails secret
EDITOR=nano rails credentials:edit 
```
and include your e-mail information:
```
  email:
  username: yourusername
  password: yourpassword
  host: yourhost.com
  domain: yourhost.com
  address: smtpi.yourhost.com
```

* You can edit /bin/render-build.sh for render.com deploy configuration (You need to setup your database config variables for this).

Default Login Credentials:
```
email = 'youremail@email.com'
password = 'resumeadmin123'
```