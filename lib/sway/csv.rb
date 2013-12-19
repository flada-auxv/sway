require 'sway/base'
require 'active_support'
require 'csv'

module Sway
  class CSV < Sway::Base
    def initialize(csv, *options)
      extracted_options = options.extract_options!
      without_header = !(extracted_options[:header] == :first_line)
      raise "CSV can't be moshed without a header." if without_header
      lines = ::CSV.new(csv)
      key = lines.first
      values = lines.map {|line| line}
      array = values.inject([]) {|key_value, value| key_value << Hash[key.zip(value)]}
      super(array)
    end
  end
end
