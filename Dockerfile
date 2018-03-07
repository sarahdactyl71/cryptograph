FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /cryptograph
WORKDIR /cryptograph
COPY Gemfile /cryptograph/Gemfile
COPY Gemfile.lock /cryptograph/Gemfile.lock
RUN bundle install
COPY . /cryptograph
