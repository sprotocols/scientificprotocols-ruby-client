require 'webmock/rspec'
require 'scientificprotocols'
require 'vcr'
include ScientificProtocols::Resources

VCR.configure do |c|
  c.cassette_library_dir = 'spec/fixtures/vcr_cassettes'
  c.hook_into :webmock
end
