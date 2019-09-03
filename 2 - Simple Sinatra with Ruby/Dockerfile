FROM ruby:2.6-alpine

RUN mkdir /usr/src/app

WORKDIR /usr/src/app

ADD . /usr/src/app

RUN gem install bundler

RUN bundle install

CMD ruby app.rb -o 0.0.0.0