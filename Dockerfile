FROM ruby:2.5
ENV BLACKLIGHT_INSTALL_OPTIONS "--devise"
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client apt-utils yarnpkg
RUN mkdir /myapp
WORKDIR /myapp
