#bundle config unset frozen
#bundle lock --add-platform ruby
#bundle lock --add-platform x86_64-linux
echo '************ Bundle Install ************'
bundle install
#echo '************ Yarn ************'
#yarn
#echo '************ Yarn Adding Packages ************'
#yarn add @fortawesome/fontawesome-svg-core
#yarn add @fortawesome/free-solid-svg-icons
#yarn add @fortawesome/free-regular-svg-icons
#yarn add @fortawesome/free-brands-svg-icons
#echo '************ Yarn Build ************'
yarn build
echo '************ Assets:Clobber ************'
bundle exec rails rake assets:clobber
echo '************ Assets:Precompile ************'
bundle exec rails assets:precompile --trace
#yarn build
#rails active_storage:install
#bundle exec rake assets:precompile
#bundle exec rake assets:clean
#bundle exec rake db:migrate
#bundle exec rake db:seed