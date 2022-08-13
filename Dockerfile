FROM ruby:3.1.2

ARG RAILS_MASTER_KEY
ENV APP_ROOT /app

ENV RAILS_MASTER_KEY ${RAILS_MASTER_KEY}

WORKDIR $APP_ROOT

ADD Gemfile $APP_ROOT
ADD Gemfile.lock $APP_ROOT
RUN bundle install && rm -rf ~/.gem
ADD . $APP_ROOT

RUN if [ "${RAILS_ENV}" = "production" ]; then bundle exec rails assets:precomp ile; else export RAILS_ENV=development; fi
EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]
