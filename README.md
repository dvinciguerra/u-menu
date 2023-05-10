# u-menu

[![Maintainability](https://api.codeclimate.com/v1/badges/384f1905e6b7e6dc8153/maintainability)](https://codeclimate.com/github/dvinciguerra/u-menu/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/384f1905e6b7e6dc8153/test_coverage)](https://codeclimate.com/github/dvinciguerra/u-menu/test_coverage)

micro-menu is a command line tool that delivers a simple and customized command pallet.

## Installation

    $ gem install u-menu

## Settings

Use the follow example to create a `~/.u-menu/u-menurc.yml` file

```yaml
---
version: 0.1
title: apps
settings:
  editor: 'nvim'
options:
  - name: Firefox
    value: firefox
    type: command
    execute: 'open /opt/homebrew/Caskroom/firefox-developer-edition/latest/Firefox\ Developer\ Edition.app'
  - name: '{{github}} Github'
    value: github
    type: link
    execute: 'https://github.com'
  - name: '{{github}} Github /Pull Requests'
    value: github_pulls
    type: link
    execute: 'https://github.com/pulls?q=is%3Apr+is%3Aopen+author%3A%40me+archived%3Afalse+sort%3Aupdated-desc'
  - name: '{{github}} Github /Issues'
    value: github_issues
    type: link
    execute: 'https://github.com/issues?q=is%3Aissue+is%3Aopen+author%3A%40me+archived%3Afalse+sort%3Aupdated-desc'
  - name: '{{github}} Github /Profile'
    value: github_profile
    type: link
    execute: 'https://github.com/dvinciguerra'
  - name: Todoist App
    value: todoist
    type: command
    execute: 'open /Applications/Todoist.app'
  - name: Rubygems
    value: rubygems
    type: link
    execute: 'https://rubygems.org'

```

## Usage

Execute the command:

    $ u-menu

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/dvinciguerra/u-menu. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/dvinciguerra/u-menu/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the U::Menu project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/dvinciguerra/u-menu/blob/main/CODE_OF_CONDUCT.md).
