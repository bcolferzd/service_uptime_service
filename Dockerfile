FROM ruby:2.4
MAINTAINER Brian Colfer "bcolfer@zendesk.com"

ENV REFRESHED_AT 2017-01-13


WORKDIR /app

COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN bundle install

RUN rake spec

COPY . /app

#
EXPOSE 3000
CMD rake db:migrate && rails server -o 0.0.0.0
