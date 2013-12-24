require 'sway/mashable'

module Sway
  class Base
    include Sway::Mashable
    attr_reader :mash, :mashes

    def initialize(array_or_hash_material)
      case array_or_hash_material.class.to_s
      when 'Array'
        array_items = array_or_hash_material
        @mashes = create_mashes_from(array_items)
      when 'Hash'
        hash_items = array_or_hash_material
        @mash = create_mash_from(hash_items)
      end
    end
  end
end
