require 'spec_helper'

describe ScientificProtocols::DSL::Protocols do
  # GET /protocols
  describe '#get_protocols' do
    it 'returns an array of protocols' do
      VCR.use_cassette('get_protocols') do
        protocols = ScientificProtocols.client.get_protocols
        expect(protocols).to be_a(Array)
        expect(protocols.first).to be_a(Protocol)
      end
    end
  end
  
  # GET /protocols/{id}
  describe '#get_protocol' do
    it 'returns a protocol' do
      VCR.use_cassette('get_protocol') do
        expect(ScientificProtocols.client.get_protocol(id: 'beta-glactasidase-stain')).to be_a(Protocol)
      end
    end
  end
end