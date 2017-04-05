FROM ruby:2.3
MAINTAINER jamessomqueiroz@gmail.com

RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -

RUN apt-get update -qq && apt-get install -y --no-install-recommends apt-utils build-essential curl libcurl4-openssl-dev libffi-dev libmysqlclient-dev libmysqld-dev libpq-dev libreadline-dev libsqlite3-dev libssl-dev libxml2-dev libxslt1-dev libyaml-dev mysql-client nodejs python-software-properties sqlite3 zlib1g-dev

RUN gem install rails -v 5.0.1
# ===== Choose the rails version
# RUN gem install rails -v 4.2.7.1
# RUN gem install rails -v 4.1.16
# RUN gem install rails -v 4.0.13
# RUN gem install rails -v 3.2.22.5

RUN npm install bower -g

RUN mkdir /app/web -p
RUN mkdir /app/shared/tmp -p

WORKDIR /app/
ADD . /app/web

RUN cd web
