FROM ruby:2.4-alpine

ENV APP_DIR=/app

ENV DEV_PACKAGES="build-base bash wget curl-dev ruby-dev zlib-dev libxml2-dev libxslt-dev tzdata yaml-dev sqlite-dev mysql-dev mysql-client" \
    RAILS_PACKAGES="nodejs"

RUN apk --update --upgrade add $RAILS_PACKAGES $DEV_PACKAGES  

RUN mkdir -p $APP_DIR
WORKDIR $APP_DIR

# Cache bundle install
COPY Gemfile ./

COPY . $APP_DIR
RUN bundle install
