# README

To run the application do the following commands in order:

1) docker run --rm -it --volume "$(pwd):/csce431" -e DATABASE_USER=test_app -e DATABASE_PASSWORD=test_password -p 3000:3000 dmartinez05/ruby_rails_postgresql:latest

2) bundle install

3) rails g devise:install

4) rails db:create

5) rails db:migrate

6) rails server --binding=0.0.0.0


