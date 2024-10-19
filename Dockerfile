FROM ruby:3.2.2
RUN apt-get update && apt-get install -y build-essential \
    libpq-dev \
    nodejs \
    postgresql-client
WORKDIR /rails-docker
COPY Gemfile Gemfile.lock /rails-docker/
RUN bundle install
CMD ["rails", "server", "-b", "0.0.0.0"]