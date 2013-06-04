Heroku buildpack: Ruby Couchbase
======================

This is a buildpack that enables using the [couchbase gem](https://github.com/couchbase/couchbase-ruby-client) on Heroku Cedar.

It is based on the [Heroku Ruby Couchbase buildpack](https://github.com/davidjrice/heroku-buildpack-couchbase-ruby) by [David Rice](https://github.com/davidjrice).

### Create App

    heroku create --stack cedar --buildpack https://github.com/kurobase/heroku-buildpack-couchbase-ruby.git
    git push heroku master
    ...
    -----> Heroku receiving push
    -----> Fetching custom buildpack... done
    -----> Ruby/Rails app detected
    -----> Installing libvbucket
    -----> Installing libcouchbase
    -----> Installing dependencies using Bundler version 1.1.2
           Running: bundle install --without development:test --path vendor/bundle --binstubs bin/ --deployment
    ....

### Update Buildpack

    heroku config:set BUILDPACK_URL=https://github.com/kurobase/heroku-buildpack-couchbase-ruby.git
    Setting config vars and restarting heroku-app... done, v12
    BUILDPACK_URL: https://github.com/kurobase/heroku-buildpack-couchbase-ruby.git



