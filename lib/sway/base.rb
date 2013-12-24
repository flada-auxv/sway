require 'sway/mashable'

module Sway
  class Base
    include Sway::Mashable
    attr_reader :mash, :mashes

    def initialize(array_or_hash)
      case array_or_hash.class.to_s
      when 'Array'
        array = array_or_hash
        @mashes = create_mashes_from(array)
      when 'Hash'
        hash = array_or_hash
        @mash = create_mash_from(hash)
      end
    end
  end
end
