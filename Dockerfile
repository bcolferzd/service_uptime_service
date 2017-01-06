FROM ruby:2.4

RUN mkdir /opt/apps
RUN git clone https://github.com/zendesk/service_uptime_service.git /opt/apps/service_uptime_service
WORKDIR /opt/apps/service_uptime_service

RUN ['bundle', 'install']

RUN ['bundle','exec','rackup']
