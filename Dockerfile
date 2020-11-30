FROM ruby:2.5
RUN apt-get update
RUN apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs \
    postgresql-client \
    yarn

WORKDIR /Docker_introduction
COPY Gemfile Gemfile.lock /Docker_introduction
RUN bundle install