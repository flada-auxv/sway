require 'sway/base'
require 'yaml'

module Sway
  class YAML < Sway::Base
    def initialize(yaml)
      array_or_hash = ::YAML.load(yaml)
      super(array_or_hash)
    end
  end
end
