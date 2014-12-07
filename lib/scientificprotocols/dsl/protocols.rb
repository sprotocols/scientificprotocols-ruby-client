require 'scientificprotocols/dsl'

module ScientificProtocols
  module DSL::Protocols
    # GET /Protocols
    # Get protocols.
    # @return [Array, nil].
    def get_protocols
      Resources::Protocol.parse(request(:get, 'protocols/', nil, nil))
    end

    # GET /Protocol/{id}
    # Get a protocol.
    # @param [String] id A protocol's ID.
    # @raise [ArgumentError] If the method arguments are blank.
    # @return [ScientificProtocols::Resources::protocol, nil].
    def get_protocol(id:)
      raise ArgumentError, 'ID cannot be blank' if id.blank?
      Resources::Protocol.parse(request(:get, "protocols/#{id}"))
    end
  end
end