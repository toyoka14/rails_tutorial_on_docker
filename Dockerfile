FROM ruby:2.6.6-alpine3.11
ENV LANG C.UTF-8

RUN apk update && apk upgrade && \
    apk add --no-cache linux-headers libxml2-dev make gcc libc-dev nodejs yarn tzdata mysql-client mysql-dev git

ENV APP_ROOT /app_rordocker
RUN mkdir $APP_ROOT
WORKDIR $APP_ROOT

ADD Gemfile $APP_ROOT/Gemfile
ADD Gemfile.lock $APP_ROOT/Gemfile.lock

RUN bundle install
ADD . $APP_ROOT
