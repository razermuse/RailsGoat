FROM ruby:2.7.0

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /myapp

COPY ./contrast_security.yaml /myapp/contrast_security.yaml

WORKDIR /myapp

ADD Gemfile /myapp/Gemfile
ADD Gemfile.lock /myapp/Gemfile.lock

RUN gem install activesupport -v 6.1.4.6
RUN gem install contrast-agent
RUN gem install bundler -v 1.17.3
RUN bundle install
RUN rails db:setup

ADD . /myapp
