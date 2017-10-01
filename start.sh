
#!/bin/sh
echo "Bundle check..."
bundle check || bundle install

echo "Initializing database..."
bundle exec rake db:setup

echo "Migrating & seeding..."
bundle exec rails db:migrate
bundle exec rails db:seed

rm tmp/* -Rf

bundle exec rails s
