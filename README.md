# Hafestrometre

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/Hafestrometre`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'Hafestrometre'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install Hafestrometre

## Usage

### Background
Using this as a method of putting my commands on a single line, so LearnAnswer can properly use this system.

### Training On A Language
This uses the training model found in this repository: https://github.com/LWFlouisa/hafestrometre

### Specific commands
Takes you to the training prompt.
~~~ruby
require "Hafestrometre"

Hafestrometre::Language.train
~~~

This classifies each word in the input stream.

~~~ruby
require "Hafestrometre"

Hafestrometre::Language.classify
~~~

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/Hafestrometre. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/Hafestrometre/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Hafestrometre project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/Hafestrometre/blob/master/CODE_OF_CONDUCT.md).
