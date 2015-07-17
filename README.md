# Scientific Protocols Ruby Client

A Ruby wrapper for the Scientific Protocols API. https://www.scientificprotocols.org/api_v1

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

protocols.each do |protocol|
  puts protocol
end
```

Get a protocol.
```
protocol = ScientificProtocols.client.get_protocol(id: 'beta-glactasidase-stain')

puts protocol

{
   "id":"beta-glactasidase-stain",
   "url":"https://www.scientificprotocols.org/api/v1/protocols/beta-glactasidase-stain",
   "title":"Beta-Glactasidase Stain",
   "description":"\r\n\r\n### Solutions\r\n\r\n1. Solution A\r\n…”,
   "gist_id":"315e630a1fe9fe6e9bab",
   "html_url":"https://www.scientificprotocols.org/protocols/beta-glactasidase-stain",
   "discussion_html_url":"https://www.scientificprotocols.org/protocols/beta-glactasidase-stain/discussion",
   "tags":[
      "Histology"
   ],
   "average_rating":4,
   "number_of_ratings":3,
   "doi":"10.5281/zenodo.13491",
   "citation_html_url":"http://dx.doi.org/10.5281/zenodo.13491",
   "author":{
      "username":"scientificprotocols",
      "html_url":"https://www.scientificprotocols.org/users/scientificprotocols"
   },
   "created_at":"2014-07-09T18:59:17.254Z",
   "updated_at":"2014-07-09T18:59:17.254Z"
}
```

## Contributing

1. Fork it ( https://github.com/sprotocols/scientificprotocols-ruby-client/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
