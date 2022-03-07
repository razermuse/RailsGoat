FROM ruby:2.6.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /myapp
WORKDIR /myapp
ADD Gemfile /myapp/Gemfile
ADD Gemfile.lock /myapp/Gemfile.lock
RUN gem install bundler -v 1.17.3
RUN gem install contrast-agent
RUN gem install contrast-service
Run ./contrast_service &
RUN bundle install
RUN rails db:setup
ADD . /myapp
