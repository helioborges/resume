bundle config unset frozen
bundle lock --add-platform ruby
bundle lock --add-platform x86_64-linux
bundle install
rails active_storage:install
bundle exec rake assets:precompile
bundle exec rake assets:clean
bundle exec rake db:migrate
bundle exec rake db:seed  