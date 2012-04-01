# Trys

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'trys'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install trys

## Usage

```ruby
3.trys(:to_s, :foo)        # => nil
3.trys(:to_s, :to_i)       # => 9
3.trys(:to_s, :to_i, :foo) # => nil
```

Block 

```ruby
3.trys(:to_s) {|o| o.to_i * o.to_i } # => 9
3.trys(:to_s) {|o| o.foo * o.baz}    # => nil
```

Alias

```ruby
3.try_chain(:to_s, :foo) # => nil
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
