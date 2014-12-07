require 'scientificprotocols/version'

module ScientificProtocols
  autoload :Client, 'scientificprotocols/client'
  autoload :DSL, 'scientificprotocols/dsl'
  autoload :Resources, 'scientificprotocols/resources'
  autoload :Errors, 'scientificprotocols/errors'
  autoload :Utils, 'scientificprotocols/utils'

  class << self
    # @return [String]
    attr_accessor :api_key
    attr_accessor :logger
  end

  module_function

  # @return [ScientificProtocols::Client]
  def client
    @client ||= Client.new()
  end
end
