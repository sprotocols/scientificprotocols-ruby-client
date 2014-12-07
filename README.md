# Scientific Protocols Ruby Client

A Ruby wrapper for the Scientific Protocols API.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'scientific_protocols'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install scientific_protocols

## Usage

Get protocols.
```
protocols = ScientificProtocols.client.get_protocols
```

Get a protocol.
```
protocol = ScientificProtocols.client.get_protocol(id: 'beta-glactasidase-stain')
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/scientificprotocols-ruby-client/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
