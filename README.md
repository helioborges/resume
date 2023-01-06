# README

Basic Resume App with Devise/Login

simple_form with nested attributes

bootstrap and fontawesome 

active_storage (local) for uploads


# Requirements: 

* Ruby 3.1.1

* Rails 7.0.3

* sqlite3

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
