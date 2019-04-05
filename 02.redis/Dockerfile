# base on latest ruby base image
FROM ruby:2.6.2

# update and install dependencies
RUN apt-get update -qq
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y build-essential libpq-dev nodejs apt-utils

# setup app folders
RUN mkdir /app
WORKDIR /app

# copy over Gemfile and install bundle
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN bundle install --jobs 20 --retry 5

COPY . /app
