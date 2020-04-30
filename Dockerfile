FROM ruby:2.6.6

# OS Package
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

# WorkSpace
RUN mkdir /aso-diary-web-rails
ENV APP_ROOT /aso-diary-web-rails
WORKDIR $APP_ROOT

# Push Gemfile
ADD ./Gemfile $APP_ROOT/Gemfile
ADD ./Gemfile.lock $APP_ROOT/Gemfile.lock

# bundle install
RUN bundle install
ADD . $APP_ROOT
