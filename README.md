#Gadgets Keeper

Simple rails demo application for managing gadgets. Uses Ruby 2.0.0 and Rails 4.0.1

##Environment setup:

Create a `database.yml` by copying it from example:

```shell
cp config/database.yml.example config/database.yml
```

Installing gems:
```shell
bundle install
```

Initialize database scheme and initial data using:
```shell
bundle exec rake db:setup
```

## Running tests

Before the first run:
```shell
bundle exec rake db:create RAILS_ENV=test
```

To run the whole test suite do:

```shell
bundle exec rspec
```