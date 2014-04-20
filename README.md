# sprout-mysql cookbook

[![Build Status](https://travis-ci.org/pivotal-sprout/sprout-mysql.png?branch=master)](https://travis-ci.org/pivotal-sprout/sprout-mysql)

Template repo for creating standalone cookbooks

## Usage

### Prerequisites

- [system ruby](.ruby-version)
- [bundler](http://bundler.io/)

### Quickstart

```
bundle
bundle exec soloist
```

## Cookbook Usage

### Attributes

*NOTE:* All preferences are namespaced under `sprout => mysql` they include:

* `path` &mdash; The path to the file that mysql touches; default is `~/mysql`

### Recipes

1. `sprout-mysql`
1. `sprout-mysql::path`

## Contributing

### Before committing

```
bundle
bundle exec rake
```

The default rake task includes rubocop, foodcritic, unit specs

### [Rubocop](https://github.com/bbatsov/rubocop)

```
bundle
bundle exec rake rubocop
```

### [FoodCritic](http://acrmp.github.io/foodcritic/)

```
bundle
bundle exec rake foodcritic
```

### Unit specs

Unit specs use [ServerSpec](http://serverspec.org/)

```
bundle
bundle exec rake spec:unit
```

### Integration specs

Integrations specs will run the default recipe on the host system (destructive) and make assertions on the system after
install.

*Note:* It has a precondition that mysql is _not_ already installed on the system.

```
bundle
bundle exec rake spec:integration
```
