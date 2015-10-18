FROM ruby:2.2.3

RUN apt-get update

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY . /usr/src/app

## CMD bash -c "bundle install --local --deployment && /bin/bash"
CMD bash -c "./bin/storm"
