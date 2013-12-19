require 'sway/extensions'
require 'hashie'

module Sway
  module Mashable
    def create_mashes_from(array_items)
      array_items.inject([]) {|items, item| items << Hashie::Mash.new(item)}
    end

    def create_mash_from(hash_items)
      Hashie::Mash.new(hash_items)
    end
  end
end
