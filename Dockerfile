FROM ruby:2.4
MAINTAINER Brian Colfer "bcolfer@zendesk.com"

ENV REFRESHED_AT 2017-01-11

COPY ./* /opt/apps/service_uptime_service/
WORKDIR /opt/apps/service_uptime_service

EXPOSE 9292

RUN bundle install

CMD ["bundle", "exec", "rackup"]
