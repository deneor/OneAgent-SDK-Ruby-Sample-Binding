FROM ruby:2.5.3-alpine3.9

RUN apk --update add build-base

ADD  /Gemfile* ./
RUN bundle install

ADD . .
CMD ["irb"]
