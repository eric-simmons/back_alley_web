#!/usr/bin/env bash
# Exit on error
set -o errexit
mkdir -p tmp/cache
export BUNDLE_PATH=vendor/bundle
export PATH="$HOME/.rbenv/bin:$HOME/.rbenv/shims:$PATH"


bundle install
yarn install
yarn build:css         
bundle exec rake assets:precompile
bundle exec rake db:migrate
