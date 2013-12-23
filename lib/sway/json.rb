require 'sway/base'
require 'active_support'
require 'json'

module Sway
  class JSON < Sway::Base
    def initialize(json)
      array_or_hash = ::JSON.parse(json)
      super(array_or_hash)
    end
  end
end
