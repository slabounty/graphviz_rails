# Rails Skeleton

This is a rails skelton project.
It is essentially the first 9 chapters of the Rails Tutorial
by Michael Hartl. It includes a couple of additional gems such as rcov 
and pry that I like. 

It will get a Rails project started quickly with sign up, login, users, admin,
etc.
by Scott LaBounty

## Install
git clone git@github.com:slabounty/Rails-Skeleton.git
cd Rails-Skeleton
bundle install --no-production
bundle exec rake db:migrate
bundle exec rake db:test:prepare
bundle exec rspec spec/
