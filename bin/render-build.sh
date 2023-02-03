#bundle config unset frozen
#bundle lock --add-platform ruby
#bundle lock --add-platform x86_64-linux
echo '************ Looking ************'
ls app/assets/builds
echo '************ Bundle Install ************'
bundle install
#echo '************ Yarn ************'
#yarn
echo '************ Yarn Adding Packages ************'
yarn add @fortawesome/fontawesome-svg-core
yarn add @fortawesome/free-solid-svg-icons
yarn add @fortawesome/free-regular-svg-icons
yarn add @fortawesome/free-brands-svg-icons
yarn add jquery popper.js bootstrap
#echo '************ Yarn Build ************'
yarn build
yarn build:css

echo '************ Assets:Clean ************'
rake assets:clean
echo '************ Assets:Clobber ************'
rake assets:clobber
echo '************ Assets:Precompile ************'
#bundle exec rails assets:precompile --trace
rake assets:precompile
echo '************ Rails Assets:Precompile ************'
#rails assets:precompile
echo '************ Looking ************'
pwd
ls app/assets/builds
#yarn build
#rails active_storage:install
#bundle exec rake assets:precompile
#bundle exec rake assets:clean
#bundle exec rake db:migrate
#bundle exec rake db:seed
rails db:seed:replant