# Graphviz Rails

This project will allow a user to input a graphviz dot file and then see
the result and be able to download it easily.

by Scott LaBounty

## Install
    git clone git@github.com:slabounty/graphviz_rails.git
    cd graphviz_rails
    bundle install --without production
    bundle exec rake db:migrate
    bundle exec rake db:test:prepare
    bundle exec rspec spec/
