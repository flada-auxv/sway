require 'hashie'

module Sway
  module Mashable
    def create_mashes_from(array)
      array.inject([]) {|items, item| items << Hashie::Mash.new(item)}
    end

    def create_mash_from(hash)
      Hashie::Mash.new(hash)
    end
  end
end
