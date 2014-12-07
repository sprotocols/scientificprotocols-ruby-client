require 'scientificprotocols'

module ScientificProtocols
  module DSL
  end
end

require 'scientificprotocols/dsl/protocols'
require 'scientificprotocols/utils'
require 'mime-types'

module ScientificProtocols
  module DSL
    include Protocols
    include Utils
  end
end

