#!/usr/bin/env bash
set -o errexit

# Install Ruby gems
bundle install --without development test

# Install JS dependencies
yarn install --frozen-lockfile || true

# Compile assets
bundle exec rake assets:precompile

# Run migrations
bundle exec rake db:migrate
