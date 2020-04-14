FROM ruby:2.7-alpine

ENV APP_HOME /app
ENV BUNDLE_PATH ${APP_HOME}/.app_data/gems

ENV DEV_PACKAGES="build-base nodejs postgresql-dev git tzdata"

RUN apk --update --upgrade add ${DEV_PACKAGES} && rm -rf /var/cache/apk/*

ENV PATH=/root/.yarn/bin:$PATH
RUN apk add --virtual build-yarn curl && touch ~/.bashrc && \
    curl -o- -L https://yarnpkg.com/install.sh | sh && apk del build-yarn

RUN mkdir -p ${APP_HOME}
WORKDIR ${APP_HOME}

COPY Gemfile* ${APP_HOME}/
RUN bundle config set clean 'true' && bundle install --jobs=10 --path=${BUNDLE_PATH}

ADD . ${APP_HOME}
