require 'asana/resource'
require 'asana/version'

module Asana
  module Config

    API_VERSION      = '1.0'
    DEFAULT_ENDPOINT = "https://app.asana.com/api/#{API_VERSION}/"
    USER_AGENT       = "Asana Ruby Gem #{Asana::VERSION}"

    attr_accessor :api_key       # used when authenticating using an api key
    attr_accessor :bearer_token  # used when authenticating using an oauth2 token

    def configure
      yield self
      Resource.site      = DEFAULT_ENDPOINT
      Resource.format    = :json
      self
    end

  end
end
