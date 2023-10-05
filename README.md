# Maglev Shrine

Change [Maglev CMS](https://github.com/maglevhq/maglev-core) uploader (asset management) to use
Shrine instead of Active Storage.

## Requirements

* Maglev 1.2+ (might work with earlier versions, but it's untested)
* Shrine 3.5+ (might work with earlier versions, but it's untested)

## Installation

Add the gem to your Gemfile and run `bundle install`:

```
gem 'maglevcms-shrine'
```

Generate migration, run migrations and add a new initializer to configure the gem:

```
bundle exec rails g maglev:shrine:instal
```

## Usage

No changes are required from the application side. The gem takes care of doing all the necessary
changes so Maglev starts using Shrine.

**NOTE**: Active Storage needs to still be loaded in the application because `app/controllers/maglev/api/assets_controller.rb` in the maglev-core gem uses it.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## TODO

* Add specs.
