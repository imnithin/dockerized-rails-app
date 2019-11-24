FROM starefossen/ruby-node:2-8-stretch
RUN apt-get update -qq && \
    apt-get install -y nano build-essential libpq-dev && \
    gem install bundler
RUN mkdir /rails_project
COPY Gemfile Gemfile.lock /rails_project/
WORKDIR /rails_project
RUN bundle install
COPY . /rails_project
