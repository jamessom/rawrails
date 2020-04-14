#!/bin/sh

echo '== Installing dependencies =='
gem install bundler --conservative
bundle check || bundle install

echo '== Removing old logs and tempfiles =='
bundle exec rails log:clear tmp:clear
rm -rf ./tmp/pids/*

echo '== Create database =='
bundle exec rails db:create

echo '== Run migrates =='
bundle exec rails db:migrate

echo '== Starting application server =='
bundle exec rails s --port 3000 -b 0.0.0.0